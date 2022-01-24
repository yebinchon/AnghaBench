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
typedef  int /*<<< orphan*/  pref ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char*,size_t,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static void FUNC3(char *buf, size_t buf_len,
				       const u8 *feat_cap, size_t feat_cap_len)
{
	static const char pref[] = " feature_cap=";
	int ret;

	buf[0] = '\0';

	/*
	 * We expect a feature capability to contain at least one byte to be
	 * reported. The string buffer provided by the caller function is
	 * expected to be big enough to contain all bytes of the attribute for
	 * known specifications. This function truncates the reported bytes if
	 * the feature capability data exceeds the string buffer size.
	 */
	if (!feat_cap || !feat_cap_len || buf_len < sizeof(pref) + 2)
		return;

	FUNC0(buf, pref, sizeof(pref));
	ret = FUNC2(&buf[sizeof(pref) - 1],
			       buf_len - sizeof(pref) + 1,
			       feat_cap, feat_cap_len);

	if (ret != (2 * (int) feat_cap_len))
		FUNC1(MSG_WARNING, "P2PS feature_cap bytes truncated");
}