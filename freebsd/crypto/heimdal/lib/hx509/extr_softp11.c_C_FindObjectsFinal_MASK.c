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
typedef  int /*<<< orphan*/  CK_RV ;

/* Variables and functions */
 int /*<<< orphan*/  CKR_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct session_state**) ; 
 int /*<<< orphan*/  FUNC2 (struct session_state*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

CK_RV
FUNC4(CK_SESSION_HANDLE hSession)
{
    struct session_state *state;

    FUNC0();

    FUNC3("FindObjectsFinal\n");
    FUNC1(hSession, &state);
    FUNC2(state);
    return CKR_OK;
}