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
typedef  int /*<<< orphan*/  u64 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {int dummy; } ;

/* Variables and functions */
 int P2P_SERV_UPNP ; 
 scalar_t__ FUNC0 (char const*) ; 
 struct wpabuf* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*,int const*,struct wpabuf*) ; 

u64 FUNC7(struct wpa_supplicant *wpa_s, const u8 *dst,
			     u8 version, const char *query)
{
	struct wpabuf *tlvs;
	u64 ret;

	tlvs = FUNC1(2 + 1 + 1 + 1 + FUNC0(query));
	if (tlvs == NULL)
		return 0;
	FUNC3(tlvs, 1 + 1 + 1 + FUNC0(query));
	FUNC5(tlvs, P2P_SERV_UPNP); /* Service Protocol Type */
	FUNC5(tlvs, 1); /* Service Transaction ID */
	FUNC5(tlvs, version);
	FUNC4(tlvs, query);
	ret = FUNC6(wpa_s, dst, tlvs);
	FUNC2(tlvs);
	return ret;
}