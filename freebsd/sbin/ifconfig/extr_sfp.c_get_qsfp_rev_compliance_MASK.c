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

/* Variables and functions */
 int /*<<< orphan*/  SFF_8436_BASE ; 
 int /*<<< orphan*/  SFF_8436_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 

__attribute__((used)) static void
FUNC2(struct i2c_info *ii, char *buf, size_t size)
{
	uint8_t xbuf;

	xbuf = 0;
	FUNC1(ii, SFF_8436_BASE, SFF_8436_STATUS, 1, &xbuf);
	FUNC0(buf, size, xbuf);
}