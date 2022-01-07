
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_size_t ;
struct md_page {int pv_list; } ;
struct TYPE_4__ {int pv_list; } ;
struct TYPE_3__ {int end; } ;


 int M_WAITOK ;
 int M_ZERO ;
 int NBPDR ;
 long NPV_LIST_LOCKS ;
 int TAILQ_INIT (int *) ;
 long howmany (int ,int ) ;
 scalar_t__ kmem_malloc (int,int) ;
 TYPE_2__ pv_dummy ;
 int * pv_list_locks ;
 struct md_page* pv_table ;
 int round_page (int) ;
 int rw_init (int *,char*) ;
 int vm_phys_nsegs ;
 TYPE_1__* vm_phys_segs ;

__attribute__((used)) static void
pmap_init_pv_table(void)
{
 vm_size_t s;
 long i, pv_npg;




 for (i = 0; i < NPV_LIST_LOCKS; i++)
  rw_init(&pv_list_locks[i], "pmap pv list");




 pv_npg = howmany(vm_phys_segs[vm_phys_nsegs - 1].end, NBPDR);




 s = (vm_size_t)pv_npg * sizeof(struct md_page);
 s = round_page(s);
 pv_table = (struct md_page *)kmem_malloc(s, M_WAITOK | M_ZERO);
 for (i = 0; i < pv_npg; i++)
  TAILQ_INIT(&pv_table[i].pv_list);
 TAILQ_INIT(&pv_dummy.pv_list);
}
