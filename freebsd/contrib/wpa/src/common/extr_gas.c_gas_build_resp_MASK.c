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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int WLAN_ACTION_PUBLIC ; 
 int WLAN_PA_GAS_COMEBACK_RESP ; 
 struct wpabuf* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf *
FUNC3(u8 action, u8 dialog_token, u16 status_code, u8 frag_id,
	       u8 more, u16 comeback_delay, size_t size)
{
	struct wpabuf *buf;

	buf = FUNC0(100 + size);
	if (buf == NULL)
		return NULL;

	FUNC2(buf, WLAN_ACTION_PUBLIC);
	FUNC2(buf, action);
	FUNC2(buf, dialog_token);
	FUNC1(buf, status_code);
	if (action == WLAN_PA_GAS_COMEBACK_RESP)
		FUNC2(buf, frag_id | (more ? 0x80 : 0));
	FUNC1(buf, comeback_delay);

	return buf;
}