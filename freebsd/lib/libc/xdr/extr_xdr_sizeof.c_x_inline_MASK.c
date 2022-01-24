#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  void* caddr_t ;
struct TYPE_3__ {scalar_t__ x_op; int /*<<< orphan*/ * x_private; int /*<<< orphan*/  x_handy; void* x_base; } ;
typedef  TYPE_1__ XDR ;

/* Variables and functions */
 scalar_t__ XDR_ENCODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static int32_t *
FUNC2(XDR *xdrs, u_int len)
{
	if (len == 0) {
		return (NULL);
	}
	if (xdrs->x_op != XDR_ENCODE) {
		return (NULL);
	}
	if (len < (u_int)(uintptr_t)xdrs->x_base) {
		/* x_private was already allocated */
		xdrs->x_handy += len;
		return ((int32_t *) xdrs->x_private);
	} else {
		/* Free the earlier space and allocate new area */
		if (xdrs->x_private)
			FUNC0(xdrs->x_private);
		if ((xdrs->x_private = (caddr_t) FUNC1(len)) == NULL) {
			xdrs->x_base = 0;
			return (NULL);
		}
		xdrs->x_base = (caddr_t)(uintptr_t)len;
		xdrs->x_handy += len;
		return ((int32_t *) xdrs->x_private);
	}
}