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
typedef  int u16 ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  P2P_ATTR_EXT_LISTEN_TIMING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 

void FUNC3(struct wpabuf *buf, u16 period,
				   u16 interval)
{
	/* Extended Listen Timing */
	FUNC2(buf, P2P_ATTR_EXT_LISTEN_TIMING);
	FUNC1(buf, 4);
	FUNC1(buf, period);
	FUNC1(buf, interval);
	FUNC0(MSG_DEBUG, "P2P: * Extended Listen Timing (period %u msec  "
		   "interval %u msec)", period, interval);
}