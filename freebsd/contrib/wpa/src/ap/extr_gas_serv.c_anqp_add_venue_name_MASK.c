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
struct hostapd_lang_string {int name_len; int /*<<< orphan*/  name; int /*<<< orphan*/  lang; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int venue_group; int venue_type; unsigned int venue_name_count; struct hostapd_lang_string* venue_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANQP_VENUE_NAME ; 
 scalar_t__ FUNC0 (struct hostapd_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int) ; 

__attribute__((used)) static void FUNC5(struct hostapd_data *hapd, struct wpabuf *buf)
{
	if (FUNC0(hapd, buf, ANQP_VENUE_NAME))
		return;

	if (hapd->conf->venue_name) {
		u8 *len;
		unsigned int i;
		len = FUNC1(buf, ANQP_VENUE_NAME);
		FUNC4(buf, hapd->conf->venue_group);
		FUNC4(buf, hapd->conf->venue_type);
		for (i = 0; i < hapd->conf->venue_name_count; i++) {
			struct hostapd_lang_string *vn;
			vn = &hapd->conf->venue_name[i];
			FUNC4(buf, 3 + vn->name_len);
			FUNC3(buf, vn->lang, 3);
			FUNC3(buf, vn->name, vn->name_len);
		}
		FUNC2(buf, len);
	}
}