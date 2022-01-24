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
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct hostapd_nai_realm_data {char encoding; scalar_t__* realm; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {unsigned int nai_realm_count; struct hostapd_nai_realm_data* nai_realm_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANQP_NAI_REALM ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,struct hostapd_nai_realm_data*) ; 
 scalar_t__ FUNC1 (struct hostapd_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 int* FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct hostapd_data*,struct wpabuf*,int const*,size_t) ; 
 int* FUNC5 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,char) ; 

__attribute__((used)) static void FUNC9(struct hostapd_data *hapd, struct wpabuf *buf,
			       const u8 *home_realm, size_t home_realm_len,
			       int nai_realm, int nai_home_realm)
{
	if (nai_realm && !nai_home_realm &&
	    FUNC1(hapd, buf, ANQP_NAI_REALM))
		return;

	if (nai_realm && hapd->conf->nai_realm_data) {
		u8 *len;
		unsigned int i, j;
		len = FUNC2(buf, ANQP_NAI_REALM);
		FUNC6(buf, hapd->conf->nai_realm_count);
		for (i = 0; i < hapd->conf->nai_realm_count; i++) {
			u8 *realm_data_len, *realm_len;
			struct hostapd_nai_realm_data *realm;

			realm = &hapd->conf->nai_realm_data[i];
			realm_data_len = FUNC5(buf, 2);
			FUNC8(buf, realm->encoding);
			realm_len = FUNC5(buf, 1);
			for (j = 0; realm->realm[j]; j++) {
				if (j > 0)
					FUNC8(buf, ';');
				FUNC7(buf, realm->realm[j]);
			}
			*realm_len = (u8 *) FUNC5(buf, 0) - realm_len - 1;
			FUNC0(buf, realm);
			FUNC3(buf, realm_data_len);
		}
		FUNC3(buf, len);
	} else if (nai_home_realm && hapd->conf->nai_realm_data && home_realm) {
		FUNC4(hapd, buf, home_realm,
						home_realm_len);
	}
}