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
struct fst_iface {int dummy; } ;
typedef  enum hostapd_hw_mode { ____Placeholder_hostapd_hw_mode } hostapd_hw_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct fst_iface*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fst_iface*) ; 
 int /*<<< orphan*/  FUNC4 (struct fst_iface*) ; 
 int /*<<< orphan*/  FUNC5 (struct fst_iface*) ; 
 struct wpabuf* FUNC6 (struct fst_iface*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (struct fst_iface*) ; 
 scalar_t__ FUNC8 (char*,size_t,char*,...) ; 
 scalar_t__ FUNC9 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf const*) ; 

__attribute__((used)) static int FUNC12(unsigned num, struct fst_iface *iface, const u8 *addr,
		      char *buf, size_t buflen)
{
	const struct wpabuf *wpabuf;
	enum hostapd_hw_mode hw_mode;
	u8 channel;
	int ret = 0;

	FUNC2(iface, &hw_mode, &channel);

	ret += FUNC8(buf + ret, buflen - ret, "band%u_frequency=%s\n",
			   num, FUNC0(FUNC1(hw_mode)));
	ret += FUNC8(buf + ret, buflen - ret, "band%u_iface=%s\n",
			   num, FUNC5(iface));
	wpabuf = FUNC6(iface, addr);
	if (wpabuf) {
		ret += FUNC8(buf + ret, buflen - ret, "band%u_mb_ies=",
				   num);
		ret += FUNC9(buf + ret, buflen - ret,
					FUNC10(wpabuf),
					FUNC11(wpabuf));
		ret += FUNC8(buf + ret, buflen - ret, "\n");
	}
	ret += FUNC8(buf + ret, buflen - ret, "band%u_fst_group_id=%s\n",
			   num, FUNC3(iface));
	ret += FUNC8(buf + ret, buflen - ret, "band%u_fst_priority=%u\n",
			   num, FUNC7(iface));
	ret += FUNC8(buf + ret, buflen - ret, "band%u_fst_llt=%u\n",
			   num, FUNC4(iface));

	return ret;
}