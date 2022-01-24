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
typedef  int u16 ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int WPS_CONFIG_PUSHBUTTON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int,int) ; 

__attribute__((used)) static int FUNC3(const u8 *config_methods, int wps2,
					  int mandatory)
{
	u16 val;

	if (FUNC2(config_methods, wps2, mandatory) < 0)
		return -1;
	if (config_methods == NULL)
		return 0;
	val = FUNC0(config_methods);
	if (val & WPS_CONFIG_PUSHBUTTON) {
		FUNC1(MSG_INFO, "WPS-STRICT: Invalid Configuration "
			   "Methods attribute value 0x%04x in AP info "
			   "(PushButton not allowed for registering new ER)",
			   val);
		return -1;
	}
	return 0;
}