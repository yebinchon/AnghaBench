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
typedef  int /*<<< orphan*/  u16 ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  P2P_ATTR_SESSION_INFORMATION_DATA ; 
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ) ; 

void FUNC5(struct wpabuf *buf, const char *info)
{
	size_t info_len = 0;

	if (info && info[0])
		info_len = FUNC0(info);

	/* Session Information Data Info */
	FUNC4(buf, P2P_ATTR_SESSION_INFORMATION_DATA);
	FUNC3(buf, (u16) info_len);

	if (info) {
		FUNC2(buf, info, info_len);
		FUNC1(MSG_DEBUG, "P2P: * Session Info Data (%s)", info);
	}
}