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
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (struct eap_sm*,size_t*) ; 
 int /*<<< orphan*/ * FUNC1 (struct eap_sm*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct eap_sm *sm)
{
	size_t len;

	if (FUNC0(sm, &len) == NULL) {
		FUNC4(MSG_INFO, "EAP-MSCHAPV2: Identity not configured");
		FUNC2(sm);
		return -1;
	}

	if (FUNC1(sm, &len) == NULL) {
		FUNC4(MSG_INFO, "EAP-MSCHAPV2: Password not configured");
		FUNC3(sm);
		return -1;
	}

	return 0;
}