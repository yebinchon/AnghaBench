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
typedef  int /*<<< orphan*/  xdrproc_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool_t
FUNC2(XDR *xdrs, char **objpp, u_int obj_size, xdrproc_t xdr_obj)
{

	bool_t more_data;

	more_data = (*objpp != NULL);
	if (! FUNC0(xdrs,&more_data)) {
		return (FALSE);
	}
	if (! more_data) {
		*objpp = NULL;
		return (TRUE);
	}
	return (FUNC1(xdrs,objpp,obj_size,xdr_obj));
}