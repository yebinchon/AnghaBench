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
typedef  int /*<<< orphan*/  xbuf ;
struct i2c_info {scalar_t__ qsfp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t,char*,char*,char*,char*,char*) ; 

__attribute__((used)) static void
FUNC10(struct i2c_info *ii, char *buf, size_t size)
{
	char xbuf[80];

	FUNC8(xbuf, 0, sizeof(xbuf));
	if (ii->qsfp != 0) {
		FUNC1(ii, xbuf, 20);
		FUNC2(ii, &xbuf[20], 20);
		FUNC3(ii, &xbuf[40], 20);
		FUNC0(ii, &xbuf[60], 20);
	} else {
		FUNC5(ii, xbuf, 20);
		FUNC6(ii, &xbuf[20], 20);
		FUNC7(ii, &xbuf[40], 20);
		FUNC4(ii, &xbuf[60], 20);
	}

	FUNC9(buf, size, "vendor: %s PN: %s SN: %s DATE: %s",
	    xbuf, &xbuf[20],  &xbuf[40], &xbuf[60]);
}