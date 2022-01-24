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
typedef  scalar_t__ uint8_t ;
struct i2c_info {int dummy; } ;
typedef  scalar_t__* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  SFF_8472_BASE ; 
 scalar_t__ SFF_8472_TRANS ; 
 scalar_t__ SFF_8472_TRANS_START ; 
 int /*<<< orphan*/  eth_10g ; 
 int /*<<< orphan*/  eth_compat ; 
 int /*<<< orphan*/  eth_extended_comp ; 
 char* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_info*,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char const*) ; 

__attribute__((used)) static void
FUNC4(struct i2c_info *ii, char *buf, size_t size)
{
	const char *tech_class;
	uint8_t code;

	/* Use extended compliance code if it's valid */
	FUNC2(ii, SFF_8472_BASE, SFF_8472_TRANS, 1, &code);
	if (code != 0)
		tech_class = FUNC0(eth_extended_comp, code);
	else {
		/* Next, check 10G Ethernet/IB CCs */
		FUNC2(ii, SFF_8472_BASE, SFF_8472_TRANS_START, 1, &code);
		tech_class = FUNC1(eth_10g, code, 1);
		if (tech_class == NULL) {
			/* No match. Try Ethernet 1G */
			FUNC2(ii, SFF_8472_BASE, SFF_8472_TRANS_START + 3,
			    1, (caddr_t)&code);
			tech_class = FUNC1(eth_compat, code, 1);
		}
	}

	if (tech_class == NULL)
		tech_class = "Unknown";

	FUNC3(buf, size, "%s", tech_class);
}