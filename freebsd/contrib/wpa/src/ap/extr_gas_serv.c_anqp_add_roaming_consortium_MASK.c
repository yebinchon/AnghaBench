#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct hostapd_roaming_consortium {int /*<<< orphan*/  len; int /*<<< orphan*/  oi; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {unsigned int roaming_consortium_count; struct hostapd_roaming_consortium* roaming_consortium; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANQP_ROAMING_CONSORTIUM ; 
 scalar_t__ FUNC0 (struct hostapd_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hostapd_data *hapd,
					struct wpabuf *buf)
{
	unsigned int i;
	u8 *len;

	if (FUNC0(hapd, buf, ANQP_ROAMING_CONSORTIUM))
		return;

	len = FUNC1(buf, ANQP_ROAMING_CONSORTIUM);
	for (i = 0; i < hapd->conf->roaming_consortium_count; i++) {
		struct hostapd_roaming_consortium *rc;
		rc = &hapd->conf->roaming_consortium[i];
		FUNC4(buf, rc->len);
		FUNC3(buf, rc->oi, rc->len);
	}
	FUNC2(buf, len);
}