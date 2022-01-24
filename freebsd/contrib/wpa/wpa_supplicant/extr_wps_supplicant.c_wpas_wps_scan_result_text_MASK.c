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

/* Variables and functions */
 int /*<<< orphan*/  WPS_DEV_OUI_WFA ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 int FUNC2 (struct wpabuf*,char*,char*) ; 

int FUNC3(const u8 *ies, size_t ies_len, char *buf,
			      char *end)
{
	struct wpabuf *wps_ie;
	int ret;

	wps_ie = FUNC0(ies, ies_len, WPS_DEV_OUI_WFA);
	if (wps_ie == NULL)
		return 0;

	ret = FUNC2(wps_ie, buf, end);
	FUNC1(wps_ie);
	return ret;
}