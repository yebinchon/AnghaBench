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
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  P2P_ATTR_OPERATING_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ) ; 

void FUNC4(struct wpabuf *buf, const char *country,
				   u8 reg_class, u8 channel)
{
	/* Operating Channel */
	FUNC3(buf, P2P_ATTR_OPERATING_CHANNEL);
	FUNC2(buf, 5);
	FUNC1(buf, country, 3);
	FUNC3(buf, reg_class); /* Regulatory Class */
	FUNC3(buf, channel); /* Channel Number */
	FUNC0(MSG_DEBUG, "P2P: * Operating Channel: Regulatory Class %u "
		   "Channel %u", reg_class, channel);
}