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
struct wps_credential {int /*<<< orphan*/  encr_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC2(struct wps_credential *cred,
				      const u8 *encr_type)
{
	if (encr_type == NULL) {
		FUNC1(MSG_DEBUG, "WPS: Credential did not include "
			   "Encryption Type");
		return -1;
	}

	cred->encr_type = FUNC0(encr_type);
	FUNC1(MSG_DEBUG, "WPS: Encryption Type: 0x%x",
		   cred->encr_type);

	return 0;
}