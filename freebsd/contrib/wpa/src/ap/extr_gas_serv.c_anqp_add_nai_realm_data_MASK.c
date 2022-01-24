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
struct hostapd_nai_realm_data {int /*<<< orphan*/ * realm; scalar_t__ encoding; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,struct hostapd_nai_realm_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct wpabuf *buf,
				    struct hostapd_nai_realm_data *realm,
				    unsigned int realm_idx)
{
	u8 *realm_data_len;

	FUNC3(MSG_DEBUG, "realm=%s, len=%d", realm->realm[realm_idx],
		   (int) FUNC2(realm->realm[realm_idx]));
	realm_data_len = FUNC4(buf, 2);
	FUNC6(buf, realm->encoding);
	FUNC6(buf, FUNC2(realm->realm[realm_idx]));
	FUNC5(buf, realm->realm[realm_idx]);
	FUNC0(buf, realm);
	FUNC1(buf, realm_data_len);
}