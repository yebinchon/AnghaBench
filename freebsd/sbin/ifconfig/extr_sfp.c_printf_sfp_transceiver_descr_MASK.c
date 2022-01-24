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
struct i2c_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SFF_8472_BASE ; 
 int /*<<< orphan*/  SFF_8472_TRANS_START ; 
 int /*<<< orphan*/  cab_tech ; 
 int /*<<< orphan*/  eth_10g ; 
 int /*<<< orphan*/  eth_compat ; 
 int /*<<< orphan*/  fc_len ; 
 int /*<<< orphan*/  fc_media ; 
 int /*<<< orphan*/  fc_speed ; 
 char* FUNC0 (int /*<<< orphan*/ ,char,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static void
FUNC3(struct i2c_info *ii, char *buf, size_t size)
{
	char xbuf[12];
	const char *tech_class, *tech_len, *tech_tech, *tech_media, *tech_speed;

	tech_class = NULL;
	tech_len = NULL;
	tech_tech = NULL;
	tech_media = NULL;
	tech_speed = NULL;

	/* Read bytes 3-10 at once */
	FUNC2(ii, SFF_8472_BASE, SFF_8472_TRANS_START, 8, &xbuf[3]);

	/* Check 10G ethernet first */
	tech_class = FUNC0(eth_10g, xbuf[3], 1);
	if (tech_class == NULL) {
		/* No match. Try 1G */
		tech_class = FUNC0(eth_compat, xbuf[6], 1);
	}

	tech_len = FUNC0(fc_len, xbuf[7], 1);
	tech_tech = FUNC0(cab_tech, xbuf[7] << 8 | xbuf[8], 2);
	tech_media = FUNC0(fc_media, xbuf[9], 1);
	tech_speed = FUNC0(fc_speed, xbuf[10], 1);

	FUNC1("Class: %s\n", tech_class);
	FUNC1("Length: %s\n", tech_len);
	FUNC1("Tech: %s\n", tech_tech);
	FUNC1("Media: %s\n", tech_media);
	FUNC1("Speed: %s\n", tech_speed);
}