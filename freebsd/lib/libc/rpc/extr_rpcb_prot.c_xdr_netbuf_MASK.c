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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct netbuf {void* buf; int /*<<< orphan*/  maxlen; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool_t
FUNC2(XDR *xdrs, struct netbuf *objp)
{
	bool_t dummy;
	void **pp;

	if (!FUNC1(xdrs, (u_int32_t *) &objp->maxlen)) {
		return (FALSE);
	}
	pp = &objp->buf;
	dummy = FUNC0(xdrs, (char **) pp,
			(u_int *)&(objp->len), objp->maxlen);
	return (dummy);
}