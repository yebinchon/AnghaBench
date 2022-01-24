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
struct recvbuf {int dummy; } ;
struct ctl_var {int flags; char* text; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int CAN_WRITE ; 
 int /*<<< orphan*/  CERR_BADFMT ; 
 int /*<<< orphan*/  CERR_BADVALUE ; 
 int /*<<< orphan*/  CERR_PERMISSION ; 
 int /*<<< orphan*/  CERR_UNKNOWNVAR ; 
 int /*<<< orphan*/  CERR_UNSPEC ; 
 int EOV ; 
 long LEAP_NOTINSYNC ; 
 scalar_t__ FUNC0 (char*,long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ctl_var* FUNC3 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* FUNC5 (size_t) ; 
 int /*<<< orphan*/  ext_sys_var ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 scalar_t__ res_associd ; 
 TYPE_1__ rpkt ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  sys_var ; 

__attribute__((used)) static void
FUNC11(
	struct recvbuf *rbufp,
	int restrict_mask
	)
{
	const struct ctl_var *v;
	int ext_var;
	char *valuep;
	long val;
	size_t octets;
	char *vareqv;
	const char *t;
	char *tt;

	val = 0;
	/*
	 * If he's trying to write into a peer tell him no way
	 */
	if (res_associd != 0) {
		FUNC1(CERR_PERMISSION);
		return;
	}

	/*
	 * Set status
	 */
	rpkt.status = FUNC7(FUNC4());

	/*
	 * Look through the variables. Dump out at the first sign of
	 * trouble.
	 */
	while ((v = FUNC3(sys_var, &valuep)) != NULL) {
		ext_var = 0;
		if (v->flags & EOV) {
			v = FUNC3(ext_sys_var, &valuep);
			if (v != NULL) {
				if (v->flags & EOV) {
					FUNC1(CERR_UNKNOWNVAR);
					return;
				}
				ext_var = 1;
			} else {
				break;
			}
		}
		if (!(v->flags & CAN_WRITE)) {
			FUNC1(CERR_PERMISSION);
			return;
		}
		/* [bug 3565] writing makes sense only if we *have* a
		 * value in the packet!
		 */
		if (valuep == NULL) {
			FUNC1(CERR_BADFMT);
			return;
		}
		if (!ext_var) {
			if ( !(*valuep && FUNC0(valuep, &val))) {
				FUNC1(CERR_BADFMT);
				return;
			}
			if ((val & ~LEAP_NOTINSYNC) != 0) {
				FUNC1(CERR_BADVALUE);
				return;
			}
		}
		
		if (ext_var) {
			octets = FUNC10(v->text) + FUNC10(valuep) + 2;
			vareqv = FUNC5(octets);
			tt = vareqv;
			t = v->text;
			while (*t && *t != '=')
				*tt++ = *t++;
			*tt++ = '=';
			FUNC8(tt, valuep, 1 + FUNC10(valuep));
			FUNC9(vareqv, 1 + FUNC10(vareqv), v->flags);
			FUNC6(vareqv);
		} else {
			FUNC1(CERR_UNSPEC); /* really */
			return;
		}
	}

	/*
	 * If we got anything, do it. xxx nothing to do ***
	 */
	/*
	  if (leapind != ~0 || leapwarn != ~0) {
	  if (!leap_setleap((int)leapind, (int)leapwarn)) {
	  ctl_error(CERR_PERMISSION);
	  return;
	  }
	  }
	*/
	FUNC2(0);
}