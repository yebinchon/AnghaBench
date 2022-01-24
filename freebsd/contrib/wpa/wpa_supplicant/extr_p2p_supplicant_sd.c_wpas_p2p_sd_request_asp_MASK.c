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
typedef  int /*<<< orphan*/  u64 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_SERV_P2PS ; 
 size_t FUNC0 (char const*) ; 
 struct wpabuf* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*,int /*<<< orphan*/  const*,struct wpabuf*) ; 

u64 FUNC7(struct wpa_supplicant *wpa_s, const u8 *dst, u8 id,
			    const char *svc_str, const char *info_substr)
{
	struct wpabuf *tlvs;
	size_t plen, svc_len, substr_len = 0;
	u64 ret;

	svc_len = FUNC0(svc_str);
	if (info_substr)
		substr_len = FUNC0(info_substr);

	if (svc_len > 0xff || substr_len > 0xff)
		return 0;

	plen = 1 + 1 + 1 + svc_len + 1 + substr_len;
	tlvs = FUNC1(2 + plen);
	if (tlvs == NULL)
		return 0;

	FUNC4(tlvs, plen);
	FUNC5(tlvs, P2P_SERV_P2PS);
	FUNC5(tlvs, id); /* Service Transaction ID */
	FUNC5(tlvs, (u8) svc_len); /* Service String Length */
	FUNC3(tlvs, svc_str, svc_len);
	FUNC5(tlvs, (u8) substr_len); /* Info Substring Length */
	FUNC3(tlvs, info_substr, substr_len);
	ret = FUNC6(wpa_s, dst, tlvs);
	FUNC2(tlvs);

	return ret;
}