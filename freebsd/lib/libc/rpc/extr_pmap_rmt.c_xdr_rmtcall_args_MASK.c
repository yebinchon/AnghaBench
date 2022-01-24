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
typedef  scalar_t__ u_long ;
typedef  scalar_t__ u_int ;
struct rmtcallargs {scalar_t__ arglen; int /*<<< orphan*/  args_ptr; int /*<<< orphan*/  (* xdr_args ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;scalar_t__ proc; scalar_t__ vers; scalar_t__ prog; } ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 

bool_t
FUNC5(XDR *xdrs, struct rmtcallargs *cap)
{
	u_int lenposition, argposition, position;

	FUNC2(xdrs != NULL);
	FUNC2(cap != NULL);

	if (FUNC4(xdrs, &(cap->prog)) &&
	    FUNC4(xdrs, &(cap->vers)) &&
	    FUNC4(xdrs, &(cap->proc))) {
		lenposition = FUNC0(xdrs);
		if (! FUNC4(xdrs, &(cap->arglen)))
		    return (FALSE);
		argposition = FUNC0(xdrs);
		if (! (*(cap->xdr_args))(xdrs, cap->args_ptr))
		    return (FALSE);
		position = FUNC0(xdrs);
		cap->arglen = (u_long)position - (u_long)argposition;
		FUNC1(xdrs, lenposition);
		if (! FUNC4(xdrs, &(cap->arglen)))
		    return (FALSE);
		FUNC1(xdrs, position);
		return (TRUE);
	}
	return (FALSE);
}