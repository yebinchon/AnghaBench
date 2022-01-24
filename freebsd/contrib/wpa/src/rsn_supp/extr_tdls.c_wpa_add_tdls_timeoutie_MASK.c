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
typedef  int /*<<< orphan*/  u32 ;
struct wpa_tdls_timeoutie {int ie_len; int /*<<< orphan*/  value; int /*<<< orphan*/  interval_type; int /*<<< orphan*/  ie_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_EID_TIMEOUT_INTERVAL ; 
 int /*<<< orphan*/  WLAN_TIMEOUT_KEY_LIFETIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_tdls_timeoutie*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static u8 * FUNC3(u8 *pos, u8 *ie, size_t ie_len, u32 tsecs)
{
	struct wpa_tdls_timeoutie *lifetime = (struct wpa_tdls_timeoutie *) ie;

	FUNC2(lifetime, 0, ie_len);
	lifetime->ie_type = WLAN_EID_TIMEOUT_INTERVAL;
	lifetime->ie_len = sizeof(struct wpa_tdls_timeoutie) - 2;
	lifetime->interval_type = WLAN_TIMEOUT_KEY_LIFETIME;
	FUNC0(lifetime->value, tsecs);
	FUNC1(pos, ie, ie_len);
	return pos + ie_len;
}