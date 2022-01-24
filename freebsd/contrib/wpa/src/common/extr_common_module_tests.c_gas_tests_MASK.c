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
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  WLAN_ACTION_PUBLIC ; 
 int /*<<< orphan*/  WLAN_PA_GAS_INITIAL_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
	struct wpabuf *buf;

	FUNC1(MSG_INFO, "gas tests");
	FUNC0(NULL);

	buf = FUNC2(1);
	if (buf == NULL)
		return -1;
	FUNC0(buf);
	FUNC3(buf);

	buf = FUNC2(20);
	if (buf == NULL)
		return -1;
	FUNC5(buf, WLAN_ACTION_PUBLIC);
	FUNC5(buf, WLAN_PA_GAS_INITIAL_REQ);
	FUNC5(buf, 0);
	FUNC4(buf, 0);
	FUNC5(buf, 0);
	FUNC0(buf);
	FUNC3(buf);

	return 0;
}