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
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int ATTR_VERSION ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 
 int FUNC3 (struct wpabuf*) ; 

int FUNC4(struct wpabuf *msg)
{
	/*
	 * Note: This attribute is deprecated and set to hardcoded 0x10 for
	 * backwards compatibility reasons. The real version negotiation is
	 * done with Version2.
	 */
	if (FUNC3(msg) < 5)
		return -1;
	FUNC0(MSG_DEBUG, "WPS:  * Version (hardcoded 0x10)");
	FUNC1(msg, ATTR_VERSION);
	FUNC1(msg, 1);
	FUNC2(msg, 0x10);
	return 0;
}