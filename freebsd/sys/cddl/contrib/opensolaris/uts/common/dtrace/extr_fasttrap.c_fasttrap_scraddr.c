
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef void* vm_offset_t ;
struct thread {TYPE_2__* t_dtrace_sscr; struct proc* td_proc; } ;
struct proc {TYPE_1__* p_vmspace; } ;
struct TYPE_12__ {void* ftss_addr; void* ftsb_addr; } ;
typedef TYPE_2__ fasttrap_scrspace_t ;
typedef TYPE_2__ fasttrap_scrblock_t ;
struct TYPE_13__ {int ftpc_mtx; int ftpc_ascr; int ftpc_fscr; int ftpc_scrblks; } ;
typedef TYPE_4__ fasttrap_proc_t ;
struct TYPE_11__ {int vm_map; } ;


 int FASTTRAP_SCRBLOCK_SIZE ;
 int FASTTRAP_SCRSPACE_SIZE ;
 int KERN_SUCCESS ;
 scalar_t__ LIST_EMPTY (int *) ;
 TYPE_2__* LIST_FIRST (int *) ;
 int LIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int LIST_REMOVE (TYPE_2__*,int ) ;
 int M_SOLARIS ;
 int M_WAITOK ;
 int VMFS_ANY_SPACE ;
 int VM_PROT_ALL ;
 int ftsb_next ;
 int ftss_next ;
 TYPE_2__* malloc (int,int ,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int vm_map_find (int *,int *,int ,void**,int,int ,int ,int ,int ,int ) ;

fasttrap_scrspace_t *
fasttrap_scraddr(struct thread *td, fasttrap_proc_t *fprc)
{
 fasttrap_scrblock_t *scrblk;
 fasttrap_scrspace_t *scrspc;
 struct proc *p;
 vm_offset_t addr;
 int error, i;

 scrspc = ((void*)0);
 if (td->t_dtrace_sscr != ((void*)0)) {

  scrspc = (fasttrap_scrspace_t *)td->t_dtrace_sscr;
  return (scrspc);
 }

 p = td->td_proc;

 mutex_enter(&fprc->ftpc_mtx);
 if (LIST_EMPTY(&fprc->ftpc_fscr)) {




  addr = 0;
  error = vm_map_find(&p->p_vmspace->vm_map, ((void*)0), 0, &addr,
      FASTTRAP_SCRBLOCK_SIZE, 0, VMFS_ANY_SPACE, VM_PROT_ALL,
      VM_PROT_ALL, 0);
  if (error != KERN_SUCCESS)
   goto done;

  scrblk = malloc(sizeof(*scrblk), M_SOLARIS, M_WAITOK);
  scrblk->ftsb_addr = addr;
  LIST_INSERT_HEAD(&fprc->ftpc_scrblks, scrblk, ftsb_next);




  for (i = 0;
      i < FASTTRAP_SCRBLOCK_SIZE / FASTTRAP_SCRSPACE_SIZE; i++) {
   scrspc = malloc(sizeof(*scrspc), M_SOLARIS, M_WAITOK);
   scrspc->ftss_addr = addr +
       i * FASTTRAP_SCRSPACE_SIZE;
   LIST_INSERT_HEAD(&fprc->ftpc_fscr, scrspc,
       ftss_next);
  }
 }





 scrspc = LIST_FIRST(&fprc->ftpc_fscr);
 LIST_REMOVE(scrspc, ftss_next);
 LIST_INSERT_HEAD(&fprc->ftpc_ascr, scrspc, ftss_next);




 td->t_dtrace_sscr = scrspc;

done:
 mutex_exit(&fprc->ftpc_mtx);

 return (scrspc);
}
