#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct fpn {int dummy; } ;
struct TYPE_2__ {int fp_sign; int /*<<< orphan*/  fp_class; scalar_t__ fp_sticky; } ;
struct fpemu {int fe_cx; int fe_fsr; TYPE_1__ fe_f1; } ;

/* Variables and functions */
 int FSR_AEXC_SHIFT ; 
 int FUNC0 (struct fpemu*,struct fpn*,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,int,int) ; 
 struct fpn* FUNC2 (struct fpemu*) ; 

void
FUNC3(u_int *c, u_int *a)
{
	struct fpemu fe;
	struct fpn *r;
	__asm __volatile("stx %%fsr, %0" : "=m" (fe.fe_fsr) :);
	fe.fe_cx = 0;
	fe.fe_f1.fp_sign = a[0] >> 31;
	fe.fe_f1.fp_sticky = 0;
	fe.fe_f1.fp_class = FUNC1(&fe.fe_f1, a[0], a[1], a[2], a[3]);
	r = FUNC2(&fe);
	c[0] = FUNC0(&fe, r, c);
	fe.fe_fsr |= fe.fe_cx << FSR_AEXC_SHIFT;
	__asm __volatile("ldx %0, %%fsr" : : "m" (fe.fe_fsr));
}