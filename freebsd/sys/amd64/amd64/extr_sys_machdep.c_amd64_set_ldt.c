
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef size_t u_int ;
struct user_segment_descriptor {int sd_type; scalar_t__ sd_p; scalar_t__ sd_dpl; } ;
struct thread {size_t* td_retval; struct proc* td_proc; int td_pcb; } ;
struct proc_ldt {scalar_t__ ldt_base; } ;
struct mdproc {struct proc_ldt* md_ldt; } ;
struct proc {struct mdproc p_md; } ;
struct i386_ldt_args {int start; int num; scalar_t__ descs; } ;


 int EACCES ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 size_t LDT_AUTO_ALLOC ;
 int PCB_FULL_IRET ;
 scalar_t__ SEL_UPL ;
 int amd64_set_ldt_data (struct thread*,size_t,int,struct user_segment_descriptor*) ;
 int dt_lock ;
 size_t max_ldt_segment ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,int,int,void*) ;
 int set_pcb_flags (int ,int ) ;
 struct proc_ldt* user_ldt_alloc (struct proc*,int ) ;

int
amd64_set_ldt(struct thread *td, struct i386_ldt_args *uap,
    struct user_segment_descriptor *descs)
{
 struct mdproc *mdp;
 struct proc_ldt *pldt;
 struct user_segment_descriptor *dp;
 struct proc *p;
 u_int largest_ld, i;
 int error;





 mdp = &td->td_proc->p_md;
 error = 0;

 set_pcb_flags(td->td_pcb, PCB_FULL_IRET);
 p = td->td_proc;
 if (descs == ((void*)0)) {

  if (uap->start == 0 && uap->num == 0)
   uap->num = max_ldt_segment;
  if (uap->num == 0)
   return (EINVAL);
  if ((pldt = mdp->md_ldt) == ((void*)0) ||
      uap->start >= max_ldt_segment)
   return (0);
  largest_ld = uap->start + uap->num;
  if (largest_ld > max_ldt_segment)
   largest_ld = max_ldt_segment;
  if (largest_ld < uap->start)
   return (EINVAL);
  mtx_lock(&dt_lock);
  for (i = uap->start; i < largest_ld; i++)
   ((volatile uint64_t *)(pldt->ldt_base))[i] = 0;
  mtx_unlock(&dt_lock);
  return (0);
 }

 if (!(uap->start == LDT_AUTO_ALLOC && uap->num == 1)) {

  largest_ld = uap->start + uap->num;
  if (uap->start >= max_ldt_segment ||
      largest_ld > max_ldt_segment ||
      largest_ld < uap->start)
   return (EINVAL);
 }


 for (i = 0; i < uap->num; i++) {
  dp = &descs[i];

  switch (dp->sd_type) {
  case 134:
   dp->sd_p = 0;
   break;
  case 139:
  case 135:
  case 143:
  case 142:
  case 130:
  case 141:
  case 140:
  case 133:
  case 128:
  case 132:
  case 138:
  case 137:
  case 131:
  case 136:
  case 129:
   return (EACCES);


  case 156:
  case 157:
  case 152:
  case 153:

   if (dp->sd_p == 0)
    return (EACCES);
   break;
  case 151:
  case 150:
  case 147:
  case 146:
  case 149:
  case 148:
  case 145:
  case 144:
  case 159:
  case 158:
  case 155:
  case 154:
   break;
  default:
   return(EINVAL);
  }


  if ((dp->sd_p != 0) && (dp->sd_dpl != SEL_UPL))
   return (EACCES);
 }

 if (uap->start == LDT_AUTO_ALLOC && uap->num == 1) {

  mtx_lock(&dt_lock);
  pldt = user_ldt_alloc(p, 0);
  if (pldt == ((void*)0)) {
   mtx_unlock(&dt_lock);
   return (ENOMEM);
  }





  i = 16;
  dp = &((struct user_segment_descriptor *)(pldt->ldt_base))[i];
  for (; i < max_ldt_segment; ++i, ++dp) {
   if (dp->sd_type == 134)
    break;
  }
  if (i >= max_ldt_segment) {
   mtx_unlock(&dt_lock);
   return (ENOSPC);
  }
  uap->start = i;
  error = amd64_set_ldt_data(td, i, 1, descs);
  mtx_unlock(&dt_lock);
 } else {
  largest_ld = uap->start + uap->num;
  if (largest_ld > max_ldt_segment)
   return (EINVAL);
  mtx_lock(&dt_lock);
  if (user_ldt_alloc(p, 0) != ((void*)0)) {
   error = amd64_set_ldt_data(td, uap->start, uap->num,
       descs);
  }
  mtx_unlock(&dt_lock);
 }
 if (error == 0)
  td->td_retval[0] = uap->start;
 return (error);
}
