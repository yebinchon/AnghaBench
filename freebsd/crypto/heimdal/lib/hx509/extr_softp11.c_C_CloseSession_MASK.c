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
struct session_state {int dummy; } ;
typedef  int /*<<< orphan*/  CK_SESSION_HANDLE ;
typedef  scalar_t__ CK_RV ;

/* Variables and functions */
 scalar_t__ CKR_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct session_state*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct session_state**) ; 

CK_RV
FUNC5(CK_SESSION_HANDLE hSession)
{
    struct session_state *state;
    FUNC0();
    FUNC3("CloseSession\n");

    if (FUNC4(hSession, &state) != CKR_OK)
	FUNC1("closed session not open");
    else
	FUNC2(state);

    return CKR_OK;
}