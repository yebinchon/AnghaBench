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
typedef  int /*<<< orphan*/  u16 ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  P2P_ATTR_FEATURE_CAPABILITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ) ; 

void FUNC4(struct wpabuf *buf, u16 len, const u8 *mask)
{
	if (!buf || !len || !mask)
		return;

	/* Feature Capability */
	FUNC3(buf, P2P_ATTR_FEATURE_CAPABILITY);
	FUNC2(buf, len);
	FUNC1(buf, mask, len);
	FUNC0(MSG_DEBUG, "P2P: * Feature Capability (%d)", len);
}