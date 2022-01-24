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
typedef  int uint8_t ;
struct i2c_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SFF_8436_BASE ; 
 int /*<<< orphan*/  SFF_8436_CODE_E1040100G ; 
 int /*<<< orphan*/  SFF_8436_OPTIONS_START ; 
 int SFF_8636_EXT_COMPLIANCE ; 
 int /*<<< orphan*/  eth_1040g ; 
 int /*<<< orphan*/  eth_extended_comp ; 
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char const*) ; 

__attribute__((used)) static void
FUNC4(struct i2c_info *ii, char *buf, size_t size)
{
	const char *tech_class;
	uint8_t code;

	FUNC2(ii, SFF_8436_BASE, SFF_8436_CODE_E1040100G, 1, &code);

	/* Check for extended specification compliance */
	if (code & SFF_8636_EXT_COMPLIANCE) {
		FUNC2(ii, SFF_8436_BASE, SFF_8436_OPTIONS_START, 1, &code);
		tech_class = FUNC0(eth_extended_comp, code);
	} else
		/* Check 10/40G Ethernet class only */
		tech_class = FUNC1(eth_1040g, code, 1);

	if (tech_class == NULL)
		tech_class = "Unknown";

	FUNC3(buf, size, "%s", tech_class);
}