
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct fpn {int dummy; } ;
struct TYPE_2__ {int fp_sign; int fp_class; scalar_t__ fp_sticky; } ;
struct fpemu {int fe_cx; int fe_fsr; TYPE_1__ fe_f1; } ;


 int FSR_AEXC_SHIFT ;
 int __fpu_ftoq (struct fpemu*,struct fpn*,int*) ;
 int __fpu_qtof (TYPE_1__*,int,int,int,int) ;
 struct fpn* __fpu_sqrt (struct fpemu*) ;

void
_Qp_sqrt(u_int *c, u_int *a)
{
 struct fpemu fe;
 struct fpn *r;
 __asm __volatile("stx %%fsr, %0" : "=m" (fe.fe_fsr) :);
 fe.fe_cx = 0;
 fe.fe_f1.fp_sign = a[0] >> 31;
 fe.fe_f1.fp_sticky = 0;
 fe.fe_f1.fp_class = __fpu_qtof(&fe.fe_f1, a[0], a[1], a[2], a[3]);
 r = __fpu_sqrt(&fe);
 c[0] = __fpu_ftoq(&fe, r, c);
 fe.fe_fsr |= fe.fe_cx << FSR_AEXC_SHIFT;
 __asm __volatile("ldx %0, %%fsr" : : "m" (fe.fe_fsr));
}
