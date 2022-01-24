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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (scalar_t__ const*) ; 
 scalar_t__ WPS_ENCR_WEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(const u8 *key, size_t key_len,
				    const u8 *encr_type, int mandatory)
{
	if (key == NULL) {
		if (mandatory) {
			FUNC2(MSG_INFO, "WPS-STRICT: Network Key "
				   "attribute missing");
			return -1;
		}
		return 0;
	}
	if (((encr_type == NULL || FUNC0(encr_type) != WPS_ENCR_WEP) &&
	     key_len > 8 && key_len < 64 && key[key_len - 1] == 0) ||
	    key_len > 64) {
		FUNC1(MSG_INFO, "WPS-STRICT: Invalid Network "
				      "Key attribute value", key, key_len);
		return -1;
	}
	return 0;
}