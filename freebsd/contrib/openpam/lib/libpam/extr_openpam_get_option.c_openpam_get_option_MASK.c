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
 size_t FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,char const*,size_t) ; 

const char *
FUNC4(pam_handle_t *pamh,
	const char *option)
{
	pam_chain_t *cur;
	size_t len;
	int i;

	FUNC0(option);
	if (pamh == NULL || pamh->current == NULL || option == NULL)
		FUNC1(NULL);
	cur = pamh->current;
	len = FUNC2(option);
	for (i = 0; i < cur->optc; ++i) {
		if (FUNC3(cur->optv[i], option, len) == 0) {
			if (cur->optv[i][len] == '\0')
				FUNC1(&cur->optv[i][len]);
			else if (cur->optv[i][len] == '=')
				FUNC1(&cur->optv[i][len + 1]);
		}
	}
	FUNC1(NULL);
}