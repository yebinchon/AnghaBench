
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct vdso_timehands {int th_offset_count; int th_counter_mask; } ;


 int __vdso_gettc (struct vdso_timehands const*,int*) ;

__attribute__((used)) static int
tc_delta(const struct vdso_timehands *th, u_int *delta)
{
 int error;
 u_int tc;

 error = __vdso_gettc(th, &tc);
 if (error == 0)
  *delta = (tc - th->th_offset_count) & th->th_counter_mask;
 return (error);
}
