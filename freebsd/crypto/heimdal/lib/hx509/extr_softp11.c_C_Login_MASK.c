#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int login_done; } ;
struct TYPE_4__ {TYPE_1__ flags; int /*<<< orphan*/  config_file; } ;
typedef  int /*<<< orphan*/  CK_UTF8CHAR_PTR ;
typedef  scalar_t__ CK_USER_TYPE ;
typedef  scalar_t__ CK_ULONG ;
typedef  int /*<<< orphan*/  CK_SESSION_HANDLE ;
typedef  scalar_t__ CK_RV ;

/* Variables and functions */
 scalar_t__ CKR_OK ; 
 scalar_t__ CKR_PIN_INCORRECT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  NULL_PTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 TYPE_2__ soft_token ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

CK_RV
FUNC6(CK_SESSION_HANDLE hSession,
	CK_USER_TYPE userType,
	CK_UTF8CHAR_PTR pPin,
	CK_ULONG ulPinLen)
{
    char *pin = NULL;
    CK_RV ret;
    FUNC0();

    FUNC5("Login\n");

    FUNC1(hSession, NULL);

    if (pPin != NULL_PTR) {
	FUNC2(&pin, "%.*d", (int)ulPinLen, pPin);
	FUNC5("type: %d password: %s\n", (int)userType, pin);
    }

    /*
     * Login
     */

    ret = FUNC4(soft_token.config_file, userType, pin);
    if (ret == CKR_OK)
	soft_token.flags.login_done = 1;

    FUNC3(pin);

    return soft_token.flags.login_done ? CKR_OK : CKR_PIN_INCORRECT;
}