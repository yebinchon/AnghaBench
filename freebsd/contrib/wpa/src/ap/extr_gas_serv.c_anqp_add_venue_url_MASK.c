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
struct hostapd_venue_url {scalar_t__ url_len; int /*<<< orphan*/  url; scalar_t__ venue_number; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {unsigned int venue_url_count; struct hostapd_venue_url* venue_url; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANQP_VENUE_URL ; 
 scalar_t__ FUNC0 (struct hostapd_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct hostapd_data *hapd, struct wpabuf *buf)
{
	if (FUNC0(hapd, buf, ANQP_VENUE_URL))
		return;

	if (hapd->conf->venue_url) {
		u8 *len;
		unsigned int i;

		len = FUNC1(buf, ANQP_VENUE_URL);
		for (i = 0; i < hapd->conf->venue_url_count; i++) {
			struct hostapd_venue_url *url;

			url = &hapd->conf->venue_url[i];
			FUNC4(buf, 1 + url->url_len);
			FUNC4(buf, url->venue_number);
			FUNC3(buf, url->url, url->url_len);
		}
		FUNC2(buf, len);
	}
}