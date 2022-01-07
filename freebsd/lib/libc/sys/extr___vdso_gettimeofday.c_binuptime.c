
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_int ;
struct vdso_timekeep {scalar_t__ tk_current; struct vdso_timehands* tk_th; int tk_enabled; } ;
struct bintime {int dummy; } ;
struct vdso_timehands {scalar_t__ th_gen; int th_scale; int th_boottime; struct bintime th_offset; } ;


 int EAGAIN ;
 int ENOSYS ;
 scalar_t__ atomic_load_acq_32 (scalar_t__*) ;
 int atomic_thread_fence_acq () ;
 int bintime_add (struct bintime*,int *) ;
 int bintime_addx (struct bintime*,int) ;
 int tc_delta (struct vdso_timehands*,int*) ;

__attribute__((used)) static int
binuptime(struct bintime *bt, struct vdso_timekeep *tk, int abs)
{
 struct vdso_timehands *th;
 uint32_t curr, gen;
 u_int delta;
 int error;

 do {
  if (!tk->tk_enabled)
   return (ENOSYS);

  curr = atomic_load_acq_32(&tk->tk_current);
  th = &tk->tk_th[curr];
  gen = atomic_load_acq_32(&th->th_gen);
  *bt = th->th_offset;
  error = tc_delta(th, &delta);
  if (error == EAGAIN)
   continue;
  if (error != 0)
   return (error);
  bintime_addx(bt, th->th_scale * delta);
  if (abs)
   bintime_add(bt, &th->th_boottime);





  atomic_thread_fence_acq();
 } while (curr != tk->tk_current || gen == 0 || gen != th->th_gen);
 return (0);
}
