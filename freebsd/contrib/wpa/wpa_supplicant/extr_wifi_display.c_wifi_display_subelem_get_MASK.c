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
struct wpabuf {int dummy; } ;
struct wpa_global {struct wpabuf** wfd_subelem; } ;

/* Variables and functions */
 int MAX_WFD_SUBELEMS ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 struct wpabuf* FUNC2 (struct wpa_global*) ; 
 int FUNC3 (char*,size_t,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 scalar_t__ FUNC5 (struct wpabuf*) ; 
 scalar_t__ FUNC6 (struct wpabuf*) ; 
 scalar_t__ FUNC7 (struct wpabuf*) ; 

int FUNC8(struct wpa_global *global, char *cmd,
			     char *buf, size_t buflen)
{
	int subelem;

	if (FUNC1(cmd, "all") == 0) {
		struct wpabuf *ie;
		int res;

		ie = FUNC2(global);
		if (ie == NULL)
			return 0;
		res = FUNC3(buf, buflen, FUNC5(ie),
				       FUNC7(ie));
		FUNC4(ie);
		return res;
	}

	subelem = FUNC0(cmd);
	if (subelem < 0 || subelem >= MAX_WFD_SUBELEMS)
		return -1;

	if (global->wfd_subelem[subelem] == NULL)
		return 0;

	return FUNC3(buf, buflen,
				FUNC6(global->wfd_subelem[subelem]) +
				1,
				FUNC7(global->wfd_subelem[subelem]) - 1);
}