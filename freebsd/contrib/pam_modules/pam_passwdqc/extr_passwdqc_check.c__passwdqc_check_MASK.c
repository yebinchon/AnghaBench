#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  truncated ;
struct passwd {char const* pw_name; char const* pw_gecos; } ;
struct TYPE_6__ {int* min; int max; scalar_t__ similar_deny; } ;
typedef  TYPE_1__ passwdqc_params_t ;

/* Variables and functions */
 char* REASON_ERROR ; 
 char* REASON_LONG ; 
 char* REASON_PERSONAL ; 
 char* REASON_SAME ; 
 char* REASON_SHORT ; 
 char* REASON_SIMILAR ; 
 char* REASON_SIMPLE ; 
 char* REASON_SIMPLESHORT ; 
 char* REASON_WORD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char*,char*,char const*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char const*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char const*,int) ; 
 char* FUNC10 (char const*) ; 

const char *FUNC11(passwdqc_params_t *params,
    const char *newpass, const char *oldpass, struct passwd *pw)
{
	char truncated[9], *reversed;
	char *u_newpass, *u_reversed;
	char *u_oldpass;
	char *u_name, *u_gecos;
	const char *reason;
	int length;

	reversed = NULL;
	u_newpass = u_reversed = NULL;
	u_oldpass = NULL;
	u_name = u_gecos = NULL;

	reason = NULL;

	if (oldpass && !FUNC6(oldpass, newpass))
		reason = REASON_SAME;

	length = FUNC7(newpass);

	if (!reason && length < params->min[4])
		reason = REASON_SHORT;

	if (!reason && length > params->max) {
		if (params->max == 8) {
			truncated[0] = '\0';
			FUNC8(truncated, newpass, 8);
			newpass = truncated;
			if (oldpass && !FUNC9(oldpass, newpass, 8))
				reason = REASON_SAME;
		} else
			reason = REASON_LONG;
	}

	if (!reason && FUNC2(params, newpass)) {
		if (length < params->min[1] && params->min[1] <= params->max)
			reason = REASON_SIMPLESHORT;
		else
			reason = REASON_SIMPLE;
	}

	if (!reason) {
		if ((reversed = FUNC5(newpass))) {
			u_newpass = FUNC10(newpass);
			u_reversed = FUNC10(reversed);
			if (oldpass)
				u_oldpass = FUNC10(oldpass);
			if (pw) {
				u_name = FUNC10(pw->pw_name);
				u_gecos = FUNC10(pw->pw_gecos);
			}
		}
		if (!reversed ||
		    !u_newpass || !u_reversed ||
		    (oldpass && !u_oldpass) ||
		    (pw && (!u_name || !u_gecos)))
			reason = REASON_ERROR;
	}

	if (!reason && oldpass && params->similar_deny &&
	    (FUNC1(params, u_oldpass, u_newpass, newpass) ||
	    FUNC1(params, u_oldpass, u_reversed, reversed)))
		reason = REASON_SIMILAR;

	if (!reason && pw &&
	    (FUNC1(params, u_name, u_newpass, newpass) ||
	    FUNC1(params, u_name, u_reversed, reversed) ||
	    FUNC1(params, u_gecos, u_newpass, newpass) ||
	    FUNC1(params, u_gecos, u_reversed, reversed)))
		reason = REASON_PERSONAL;

	if (!reason && (int)FUNC7(newpass) < params->min[2] &&
	    (FUNC3(params, u_newpass, newpass) ||
	    FUNC3(params, u_reversed, reversed)))
		reason = REASON_WORD;

	FUNC4(truncated, 0, sizeof(truncated));
	FUNC0(reversed);
	FUNC0(u_newpass); FUNC0(u_reversed);
	FUNC0(u_oldpass);
	FUNC0(u_name); FUNC0(u_gecos);

	return reason;
}