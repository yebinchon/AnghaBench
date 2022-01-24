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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_3__ {int x_handy; char* x_private; } ;
typedef  TYPE_1__ XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool_t
FUNC2(XDR *xdrs, long *lp)
{
	u_int32_t l;

	if (xdrs->x_handy < sizeof(int32_t))
		return (FALSE);
	xdrs->x_handy -= sizeof(int32_t);
	FUNC0(&l, xdrs->x_private, sizeof(int32_t));
	*lp = FUNC1(l);
	xdrs->x_private = (char *)xdrs->x_private + sizeof(int32_t);
	return (TRUE);
}