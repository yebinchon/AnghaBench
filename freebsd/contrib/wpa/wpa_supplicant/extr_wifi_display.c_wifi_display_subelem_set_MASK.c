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
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 char* FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 size_t FUNC4 (char*) ; 
 int FUNC5 (struct wpa_global*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_global*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 struct wpabuf* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*,int) ; 

int FUNC12(struct wpa_global *global, char *cmd)
{
	char *pos;
	int subelem;
	size_t len;
	struct wpabuf *e;

	pos = FUNC2(cmd, ' ');
	if (pos == NULL)
		return -1;
	*pos++ = '\0';

	len = FUNC4(pos);
	if (len & 1)
		return -1;
	len /= 2;

	if (FUNC3(cmd, "all") == 0) {
		int res;

		e = FUNC8(len);
		if (e == NULL)
			return -1;
		if (FUNC1(pos, FUNC10(e, len), len) < 0) {
			FUNC9(e);
			return -1;
		}
		res = FUNC5(global, e);
		FUNC9(e);
		return res;
	}

	subelem = FUNC0(cmd);
	if (subelem < 0 || subelem >= MAX_WFD_SUBELEMS)
		return -1;

	if (len == 0) {
		/* Clear subelement */
		e = NULL;
		FUNC7(MSG_DEBUG, "WFD: Clear subelement %d", subelem);
	} else {
		e = FUNC8(1 + len);
		if (e == NULL)
			return -1;
		FUNC11(e, subelem);
		if (FUNC1(pos, FUNC10(e, len), len) < 0) {
			FUNC9(e);
			return -1;
		}
		FUNC7(MSG_DEBUG, "WFD: Set subelement %d", subelem);
	}

	FUNC9(global->wfd_subelem[subelem]);
	global->wfd_subelem[subelem] = e;
	FUNC6(global);

	return 0;
}