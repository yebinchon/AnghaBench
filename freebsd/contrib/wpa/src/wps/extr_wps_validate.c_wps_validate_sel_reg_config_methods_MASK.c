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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC3(const u8 *config_methods,
					       int wps2, int mandatory)
{
	u16 val;

	if (config_methods == NULL) {
		if (mandatory) {
			FUNC2(MSG_INFO, "WPS-STRICT: Selected Registrar "
				   "Configuration Methods attribute missing");
			return -1;
		}
		return 0;
	}

	val = FUNC0(config_methods);
	if (!FUNC1(val, wps2)) {
		FUNC2(MSG_INFO, "WPS-STRICT: Invalid Selected Registrar "
			   "Configuration Methods attribute value 0x%04x",
			   val);
		return -1;
	}
	return 0;
}