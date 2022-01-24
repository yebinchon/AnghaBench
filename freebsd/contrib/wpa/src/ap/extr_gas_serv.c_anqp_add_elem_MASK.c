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
typedef  scalar_t__ u16 ;
struct wpabuf {int dummy; } ;
struct hostapd_data {int dummy; } ;
struct anqp_element {int /*<<< orphan*/  payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 struct anqp_element* FUNC0 (struct hostapd_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct wpabuf*) ; 

__attribute__((used)) static void FUNC6(struct hostapd_data *hapd, struct wpabuf *buf,
			  u16 infoid)
{
	struct anqp_element *elem;

	elem = FUNC0(hapd, infoid);
	if (!elem)
		return;
	if (FUNC5(buf) < 2 + 2 + FUNC2(elem->payload)) {
		FUNC1(MSG_DEBUG, "ANQP: No room for InfoID %u payload",
			   infoid);
		return;
	}

	FUNC4(buf, infoid);
	FUNC4(buf, FUNC2(elem->payload));
	FUNC3(buf, elem->payload);
}