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
typedef  int uint8_t ;
struct i2c_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SFF_8436_BASE ; 
 int /*<<< orphan*/  SFF_8436_TEMP ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int
FUNC3(struct i2c_info *ii, char *buf, size_t size)
{
	uint8_t xbuf[2];

	FUNC1(xbuf, 0, sizeof(xbuf));
	FUNC2(ii, SFF_8436_BASE, SFF_8436_TEMP, 2, xbuf);
	if ((xbuf[0] == 0xFF && xbuf[1] == 0xFF) || (xbuf[0] == 0 && xbuf[1] == 0))
		return (-1);
	FUNC0(buf, size, xbuf);
	return (0);
}