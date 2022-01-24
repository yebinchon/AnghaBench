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
struct wpabuf {int dummy; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int /*<<< orphan*/  domain_name_len; scalar_t__ domain_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANQP_DOMAIN_NAME ; 
 scalar_t__ FUNC0 (struct hostapd_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hostapd_data *hapd, struct wpabuf *buf)
{
	if (FUNC0(hapd, buf, ANQP_DOMAIN_NAME))
		return;

	if (hapd->conf->domain_name) {
		FUNC2(buf, ANQP_DOMAIN_NAME);
		FUNC2(buf, hapd->conf->domain_name_len);
		FUNC1(buf, hapd->conf->domain_name,
				hapd->conf->domain_name_len);
	}
}