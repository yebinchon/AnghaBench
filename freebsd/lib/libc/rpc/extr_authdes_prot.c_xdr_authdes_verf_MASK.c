#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct authdes_verf {int /*<<< orphan*/  adv_int_u; int /*<<< orphan*/  adv_xtimestamp; } ;
typedef  int /*<<< orphan*/  des_block ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

bool_t
FUNC2(XDR *xdrs, struct authdes_verf *verf)
{
	/*
 	 * Unrolled xdr
 	 */
	FUNC0(FUNC1(xdrs, (caddr_t)&verf->adv_xtimestamp,
	    sizeof(des_block)));
	FUNC0(FUNC1(xdrs, (caddr_t)&verf->adv_int_u,
	    sizeof(verf->adv_int_u)));
	return (TRUE);
}