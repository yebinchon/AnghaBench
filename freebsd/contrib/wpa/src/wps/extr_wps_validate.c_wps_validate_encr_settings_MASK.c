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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC1(const u8 *encr_settings, size_t len,
				   int mandatory)
{
	if (encr_settings == NULL) {
		if (mandatory) {
			FUNC0(MSG_INFO, "WPS-STRICT: Encrypted Settings "
				   "attribute missing");
			return -1;
		}
		return 0;
	}
	if (len < 16) {
		FUNC0(MSG_INFO, "WPS-STRICT: Invalid Encrypted Settings "
			   "attribute length %d", (int) len);
		return -1;
	}
	return 0;
}