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
struct wpa_supplicant {scalar_t__ multi_bss_support; } ;
struct wpa_driver_capa {int dummy; } ;
typedef  int /*<<< orphan*/  field ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (struct wpa_supplicant*,int,char*,struct wpa_driver_capa*,char*,size_t) ; 
 int FUNC1 (struct wpa_supplicant*,char*,size_t) ; 
 int FUNC2 (struct wpa_supplicant*,char*,size_t) ; 
 int FUNC3 (int,char*,struct wpa_driver_capa*,char*,size_t) ; 
 int FUNC4 (int,char*,struct wpa_driver_capa*,char*,size_t) ; 
 int FUNC5 (int,char*,struct wpa_driver_capa*,char*,size_t) ; 
 int FUNC6 (int,char*,struct wpa_driver_capa*,char*,size_t) ; 
 int FUNC7 (int,char*,struct wpa_driver_capa*,char*,size_t) ; 
 int FUNC8 (int,char*,struct wpa_driver_capa*,char*,size_t) ; 
 int FUNC9 (struct wpa_supplicant*,char*,size_t) ; 
 int FUNC10 (char*,size_t) ; 
 int FUNC11 (char*,size_t,char*) ; 
 scalar_t__ FUNC12 (size_t,int) ; 
 char* FUNC13 (char*,char) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 size_t FUNC15 (char*,char const*,int) ; 
 int FUNC16 (struct wpa_supplicant*,struct wpa_driver_capa*) ; 
 scalar_t__ FUNC17 (struct wpa_supplicant*) ; 
 scalar_t__ FUNC18 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,char*,...) ; 

__attribute__((used)) static int FUNC20(
	struct wpa_supplicant *wpa_s, const char *_field, char *buf,
	size_t buflen)
{
	struct wpa_driver_capa capa;
	int res;
	char *strict;
	char field[30];
	size_t len;

	/* Determine whether or not strict checking was requested */
	len = FUNC15(field, _field, sizeof(field));
	if (len >= sizeof(field))
		return -1;
	strict = FUNC13(field, ' ');
	if (strict != NULL) {
		*strict++ = '\0';
		if (FUNC14(strict, "strict") != 0)
			return -1;
	}

	FUNC19(MSG_DEBUG, "CTRL_IFACE: GET_CAPABILITY '%s' %s",
		field, strict ? strict : "");

	if (FUNC14(field, "eap") == 0) {
		return FUNC10(buf, buflen);
	}

	res = FUNC16(wpa_s, &capa);

	if (FUNC14(field, "pairwise") == 0)
		return FUNC7(res, strict, &capa,
							  buf, buflen);

	if (FUNC14(field, "group") == 0)
		return FUNC3(res, strict, &capa,
						       buf, buflen);

	if (FUNC14(field, "group_mgmt") == 0)
		return FUNC4(res, strict, &capa,
							    buf, buflen);

	if (FUNC14(field, "key_mgmt") == 0)
		return FUNC5(res, strict, &capa,
							  buf, buflen);

	if (FUNC14(field, "proto") == 0)
		return FUNC8(res, strict, &capa,
						       buf, buflen);

	if (FUNC14(field, "auth_alg") == 0)
		return FUNC0(wpa_s, res, strict,
							  &capa, buf, buflen);

	if (FUNC14(field, "modes") == 0)
		return FUNC6(res, strict, &capa,
						       buf, buflen);

	if (FUNC14(field, "channels") == 0)
		return FUNC1(wpa_s, buf, buflen);

	if (FUNC14(field, "freq") == 0)
		return FUNC2(wpa_s, buf, buflen);

#ifdef CONFIG_TDLS
	if (os_strcmp(field, "tdls") == 0)
		return ctrl_iface_get_capability_tdls(wpa_s, buf, buflen);
#endif /* CONFIG_TDLS */

#ifdef CONFIG_ERP
	if (os_strcmp(field, "erp") == 0) {
		res = os_snprintf(buf, buflen, "ERP");
		if (os_snprintf_error(buflen, res))
			return -1;
		return res;
	}
#endif /* CONFIG_EPR */

#ifdef CONFIG_FIPS
	if (os_strcmp(field, "fips") == 0) {
		res = os_snprintf(buf, buflen, "FIPS");
		if (os_snprintf_error(buflen, res))
			return -1;
		return res;
	}
#endif /* CONFIG_FIPS */

#ifdef CONFIG_ACS
	if (os_strcmp(field, "acs") == 0) {
		res = os_snprintf(buf, buflen, "ACS");
		if (os_snprintf_error(buflen, res))
			return -1;
		return res;
	}
#endif /* CONFIG_ACS */

#ifdef CONFIG_FILS
	if (os_strcmp(field, "fils") == 0) {
#ifdef CONFIG_FILS_SK_PFS
		if (wpa_is_fils_supported(wpa_s) &&
		    wpa_is_fils_sk_pfs_supported(wpa_s)) {
			res = os_snprintf(buf, buflen, "FILS FILS-SK-PFS");
			if (os_snprintf_error(buflen, res))
				return -1;
			return res;
		}
#endif /* CONFIG_FILS_SK_PFS */

		if (wpa_is_fils_supported(wpa_s)) {
			res = os_snprintf(buf, buflen, "FILS");
			if (os_snprintf_error(buflen, res))
				return -1;
			return res;
		}
	}
#endif /* CONFIG_FILS */

	if (FUNC14(field, "multibss") == 0 && wpa_s->multi_bss_support) {
		res = FUNC11(buf, buflen, "MULTIBSS-STA");
		if (FUNC12(buflen, res))
			return -1;
		return res;
	}

#ifdef CONFIG_DPP
	if (os_strcmp(field, "dpp") == 0) {
#ifdef CONFIG_DPP2
		res = os_snprintf(buf, buflen, "DPP=2");
#else /* CONFIG_DPP2 */
		res = os_snprintf(buf, buflen, "DPP=1");
#endif /* CONFIG_DPP2 */
		if (os_snprintf_error(buflen, res))
			return -1;
		return res;
	}
#endif /* CONFIG_DPP */

	FUNC19(MSG_DEBUG, "CTRL_IFACE: Unknown GET_CAPABILITY field '%s'",
		   field);

	return -1;
}