#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pam_repository {int dummy; } ;
struct pam_conv {int dummy; } ;
struct TYPE_3__ {void** item; } ;
typedef  TYPE_1__ pam_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
#define  PAM_AUTHTOK 140 
#define  PAM_AUTHTOK_PROMPT 139 
 int /*<<< orphan*/  PAM_BAD_ITEM ; 
 int /*<<< orphan*/  PAM_BUF_ERR ; 
#define  PAM_CONV 138 
#define  PAM_HOST 137 
#define  PAM_OLDAUTHTOK 136 
#define  PAM_OLDAUTHTOK_PROMPT 135 
#define  PAM_REPOSITORY 134 
#define  PAM_RHOST 133 
#define  PAM_RUSER 132 
#define  PAM_SERVICE 131 
 int /*<<< orphan*/  PAM_SUCCESS ; 
#define  PAM_TTY 130 
#define  PAM_USER 129 
#define  PAM_USER_PROMPT 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*,int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (void const*) ; 

int
FUNC7(pam_handle_t *pamh,
	int item_type,
	const void *item)
{
	void **slot;
	size_t nsize, osize;

	FUNC0(item_type);
	slot = &pamh->item[item_type];
	osize = nsize = 0;
	switch (item_type) {
	case PAM_SERVICE:
		/* set once only, by pam_start() */
		if (*slot != NULL && item != NULL)
			FUNC2(PAM_BAD_ITEM);
		/* fall through */
	case PAM_USER:
	case PAM_AUTHTOK:
	case PAM_OLDAUTHTOK:
	case PAM_TTY:
	case PAM_RHOST:
	case PAM_RUSER:
	case PAM_USER_PROMPT:
	case PAM_AUTHTOK_PROMPT:
	case PAM_OLDAUTHTOK_PROMPT:
	case PAM_HOST:
		if (*slot != NULL)
			osize = FUNC6(*slot) + 1;
		if (item != NULL)
			nsize = FUNC6(item) + 1;
		break;
	case PAM_REPOSITORY:
		osize = nsize = sizeof(struct pam_repository);
		break;
	case PAM_CONV:
		osize = nsize = sizeof(struct pam_conv);
		break;
	default:
		FUNC2(PAM_BAD_ITEM);
	}
	if (*slot != NULL) {
		FUNC5(*slot, 0xd0, osize);
		FUNC1(*slot);
	}
	if (item != NULL) {
		if ((*slot = FUNC3(nsize)) == NULL)
			FUNC2(PAM_BUF_ERR);
		FUNC4(*slot, item, nsize);
	} else {
		*slot = NULL;
	}
	FUNC2(PAM_SUCCESS);
}