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
typedef  size_t u_int ;
typedef  int u_char ;
struct ctl_var {int flags; size_t code; char* text; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CERR_BADVALUE ; 
 int /*<<< orphan*/  CERR_UNKNOWNVAR ; 
 int CS_MAXCODE ; 
 int DEF ; 
 int EOV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ctl_var*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ctl_var* FUNC4 (struct ctl_var*,char**) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ ctl_sys_num_events ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int* def_sys_var ; 
 int* FUNC8 (size_t) ; 
 struct ctl_var* ext_sys_var ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ res_authokay ; 
 TYPE_1__ rpkt ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 struct ctl_var* sys_var ; 

__attribute__((used)) static void
FUNC12(void)
{
	const struct ctl_var *v;
	struct ctl_var *kv;
	u_int	n;
	u_int	gotvar;
	const u_char *cs;
	char *	valuep;
	const char * pch;
	u_char *wants;
	size_t	wants_count;

	/*
	 * Wants system variables. Figure out which he wants
	 * and give them to him.
	 */
	rpkt.status = FUNC10(FUNC7());
	if (res_authokay)
		ctl_sys_num_events = 0;
	wants_count = CS_MAXCODE + 1 + FUNC1(ext_sys_var);
	wants = FUNC8(wants_count);
	gotvar = 0;
	while (NULL != (v = FUNC4(sys_var, &valuep))) {
		if (!(EOV & v->flags)) {
			FUNC0(v->code < wants_count);
			wants[v->code] = 1;
			gotvar = 1;
		} else {
			v = FUNC4(ext_sys_var, &valuep);
			if (NULL == v) {
				FUNC2(CERR_BADVALUE);
				FUNC9(wants);
				return;
			}
			if (EOV & v->flags) {
				FUNC2(CERR_UNKNOWNVAR);
				FUNC9(wants);
				return;
			}
			n = v->code + CS_MAXCODE + 1;
			FUNC0(n < wants_count);
			wants[n] = 1;
			gotvar = 1;
		}
	}
	if (gotvar) {
		for (n = 1; n <= CS_MAXCODE; n++)
			if (wants[n])
				FUNC6(n);
		for (n = 0; n + CS_MAXCODE + 1 < wants_count; n++)
			if (wants[n + CS_MAXCODE + 1]) {
				pch = ext_sys_var[n].text;
				FUNC5(pch, FUNC11(pch), 0);
			}
	} else {
		for (cs = def_sys_var; *cs != 0; cs++)
			FUNC6((int)*cs);
		for (kv = ext_sys_var; kv && !(EOV & kv->flags); kv++)
			if (DEF & kv->flags)
				FUNC5(kv->text, FUNC11(kv->text),
					    0);
	}
	FUNC9(wants);
	FUNC3(0);
}