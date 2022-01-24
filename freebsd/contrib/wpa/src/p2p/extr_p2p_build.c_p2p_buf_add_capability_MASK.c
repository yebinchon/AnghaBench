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
 int /*<<< orphan*/  P2P_ATTR_CAPABILITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 

void FUNC3(struct wpabuf *buf, u8 dev_capab, u8 group_capab)
{
	/* P2P Capability */
	FUNC2(buf, P2P_ATTR_CAPABILITY);
	FUNC1(buf, 2);
	FUNC2(buf, dev_capab); /* Device Capabilities */
	FUNC2(buf, group_capab); /* Group Capabilities */
	FUNC0(MSG_DEBUG, "P2P: * Capability dev=%02x group=%02x",
		   dev_capab, group_capab);
}