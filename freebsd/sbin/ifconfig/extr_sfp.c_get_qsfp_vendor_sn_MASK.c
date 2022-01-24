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
typedef  int /*<<< orphan*/  uint8_t ;
struct i2c_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SFF_8436_BASE ; 
 int /*<<< orphan*/  SFF_8436_SN_START ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct i2c_info *ii, char *buf, size_t size)
{
	char xbuf[17];

	FUNC1(xbuf, 0, sizeof(xbuf));
	FUNC2(ii, SFF_8436_BASE, SFF_8436_SN_START, 16, (uint8_t *)xbuf);
	FUNC0(buf, size, xbuf);
}