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
struct wpa_state_machine {scalar_t__ TimeoutCtr; int /*<<< orphan*/  ANonce; int /*<<< orphan*/  Disconnect; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WPA_NONCE_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct wpa_state_machine *sm)
{
	if (FUNC0(sm->ANonce, WPA_NONCE_LEN)) {
		FUNC2(MSG_ERROR,
			   "WPA: Failed to get random data for ANonce");
		sm->Disconnect = TRUE;
		return -1;
	}
	FUNC1(MSG_DEBUG, "WPA: Assign new ANonce", sm->ANonce,
		    WPA_NONCE_LEN);
	sm->TimeoutCtr = 0;
	return 0;
}