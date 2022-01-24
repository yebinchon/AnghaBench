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
struct wps_registrar {int /*<<< orphan*/  pbc_ignore_uuid; int /*<<< orphan*/  pbc_ignore_start; scalar_t__ pbc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WPS_UUID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC3 (struct wps_registrar*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct wps_registrar*) ; 
 int /*<<< orphan*/  FUNC5 (struct wps_registrar*) ; 
 int /*<<< orphan*/  FUNC6 (struct wps_registrar*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

void FUNC7(struct wps_registrar *registrar, const u8 *uuid_e,
			    const u8 *dev_pw, size_t dev_pw_len)
{
	if (registrar->pbc) {
		FUNC6(registrar,
						 uuid_e, NULL);
		FUNC4(registrar);
#ifdef WPS_WORKAROUNDS
		os_get_reltime(&registrar->pbc_ignore_start);
#endif /* WPS_WORKAROUNDS */
		FUNC1(registrar->pbc_ignore_uuid, uuid_e, WPS_UUID_LEN);
	} else {
		FUNC5(registrar);
	}

	if (dev_pw &&
	    FUNC3(registrar, dev_pw,
						  dev_pw_len) == 0) {
		FUNC2(MSG_DEBUG, "WPS: Invalidated wildcard PIN",
				dev_pw, dev_pw_len);
	}
}