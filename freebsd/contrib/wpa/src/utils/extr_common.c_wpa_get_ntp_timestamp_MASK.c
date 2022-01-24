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
typedef  int u32 ;
struct os_time {int sec; int usec; } ;
typedef  scalar_t__ be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct os_time*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC3(u8 *buf)
{
	struct os_time now;
	u32 sec, usec;
	be32 tmp;

	/* 64-bit NTP timestamp (time from 1900-01-01 00:00:00) */
	FUNC1(&now);
	sec = now.sec + 2208988800U; /* Epoch to 1900 */
	/* Estimate 2^32/10^6 = 4295 - 1/32 - 1/512 */
	usec = now.usec;
	usec = 4295 * usec - (usec >> 5) - (usec >> 9);
	tmp = FUNC0(sec);
	FUNC2(buf, (u8 *) &tmp, 4);
	tmp = FUNC0(usec);
	FUNC2(buf + 4, (u8 *) &tmp, 4);
}