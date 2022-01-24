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
struct wps_credential {int dummy; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_CRED ; 
 struct wpabuf* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,struct wpabuf*) ; 
 scalar_t__ FUNC5 (struct wpabuf*,struct wps_credential const*) ; 

int FUNC6(struct wpabuf *msg,
			      const struct wps_credential *cred)
{
	struct wpabuf *wbuf;
	wbuf = FUNC0(200);
	if (wbuf == NULL)
		return -1;
	if (FUNC5(wbuf, cred)) {
		FUNC1(wbuf);
		return -1;
	}
	FUNC3(msg, ATTR_CRED);
	FUNC3(msg, FUNC2(wbuf));
	FUNC4(msg, wbuf);
	FUNC1(wbuf);
	return 0;
}