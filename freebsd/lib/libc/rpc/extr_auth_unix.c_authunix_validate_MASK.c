#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct opaque_auth {scalar_t__ oa_flavor; int /*<<< orphan*/  oa_length; int /*<<< orphan*/  oa_base; } ;
struct TYPE_11__ {int /*<<< orphan*/ * oa_base; int /*<<< orphan*/  oa_length; } ;
struct audata {TYPE_5__ au_origcred; TYPE_5__ au_shcred; } ;
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_9__ {int /*<<< orphan*/  x_op; } ;
typedef  TYPE_1__ XDR ;
struct TYPE_10__ {TYPE_5__ ah_cred; } ;
typedef  TYPE_2__ AUTH ;

/* Variables and functions */
 struct audata* FUNC0 (TYPE_2__*) ; 
 scalar_t__ AUTH_SHORT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XDR_DECODE ; 
 int /*<<< orphan*/  XDR_FREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool_t
FUNC6(AUTH *auth, struct opaque_auth *verf)
{
	struct audata *au;
	XDR xdrs;

	FUNC1(auth != NULL);
	FUNC1(verf != NULL);

	if (verf->oa_flavor == AUTH_SHORT) {
		au = FUNC0(auth);
		FUNC5(&xdrs, verf->oa_base, verf->oa_length,
		    XDR_DECODE);

		if (au->au_shcred.oa_base != NULL) {
			FUNC3(au->au_shcred.oa_base,
			    au->au_shcred.oa_length);
			au->au_shcred.oa_base = NULL;
		}
		if (FUNC4(&xdrs, &au->au_shcred)) {
			auth->ah_cred = au->au_shcred;
		} else {
			xdrs.x_op = XDR_FREE;
			(void)FUNC4(&xdrs, &au->au_shcred);
			au->au_shcred.oa_base = NULL;
			auth->ah_cred = au->au_origcred;
		}
		FUNC2(auth);
	}
	return (TRUE);
}