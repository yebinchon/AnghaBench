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
 int /*<<< orphan*/  WLAN_ACTION_PUBLIC ; 
 struct wpabuf* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf *
FUNC2(u8 action, u8 dialog_token, size_t size)
{
	struct wpabuf *buf;

	buf = FUNC0(100 + size);
	if (buf == NULL)
		return NULL;

	FUNC1(buf, WLAN_ACTION_PUBLIC);
	FUNC1(buf, action);
	FUNC1(buf, dialog_token);

	return buf;
}