#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* current; } ;
typedef  TYPE_1__ pam_handle_t ;
struct TYPE_5__ {int optc; char** optv; } ;
typedef  TYPE_2__ pam_chain_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  PAM_BUF_ERR ; 
 int /*<<< orphan*/  PAM_SUCCESS ; 
 int /*<<< orphan*/  PAM_SYSTEM_ERR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char**,char*,int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char** FUNC5 (char**,int) ; 
 scalar_t__ FUNC6 (char*,char const*,size_t) ; 

int
FUNC7(pam_handle_t *pamh,
	const char *option,
	const char *value)
{
	pam_chain_t *cur;
	char *opt, **optv;
	size_t len;
	int i;

	FUNC0(option);
	if (pamh == NULL || pamh->current == NULL || option == NULL)
		FUNC2(PAM_SYSTEM_ERR);
	cur = pamh->current;
	for (len = 0; option[len] != '\0'; ++len)
		if (option[len] == '=')
			break;
	for (i = 0; i < cur->optc; ++i) {
		if (FUNC6(cur->optv[i], option, len) == 0 &&
		    (cur->optv[i][len] == '\0' || cur->optv[i][len] == '='))
			break;
	}
	if (value == NULL) {
		/* remove */
		if (i == cur->optc)
			FUNC2(PAM_SUCCESS);
		for (FUNC4(cur->optv[i]); i < cur->optc; ++i)
			cur->optv[i] = cur->optv[i + 1];
		cur->optv[i] = NULL;
		FUNC2(PAM_SUCCESS);
	}
	if (FUNC3(&opt, "%.*s=%s", (int)len, option, value) < 0)
		FUNC2(PAM_BUF_ERR);
	if (i == cur->optc) {
		/* add */
		optv = FUNC5(cur->optv, sizeof(char *) * (cur->optc + 2));
		if (optv == NULL) {
			FUNC1(opt);
			FUNC2(PAM_BUF_ERR);
		}
		optv[i] = opt;
		optv[i + 1] = NULL;
		cur->optv = optv;
		++cur->optc;
	} else {
		/* replace */
		FUNC1(cur->optv[i]);
		cur->optv[i] = opt;
	}
	FUNC2(PAM_SUCCESS);
}