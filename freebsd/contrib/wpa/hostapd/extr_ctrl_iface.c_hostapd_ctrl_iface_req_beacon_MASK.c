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
struct wpabuf {int dummy; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int FUNC0 (char const*) ; 
 int FUNC1 (struct hostapd_data*,int*,int,struct wpabuf*) ; 
 scalar_t__ FUNC2 (char const*,int*) ; 
 int FUNC3 (char*,size_t,char*,int) ; 
 char* FUNC4 (char const*,char) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 struct wpabuf* FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(struct hostapd_data *hapd,
					 const char *cmd, char *reply,
					 size_t reply_size)
{
	u8 addr[ETH_ALEN];
	const char *pos;
	struct wpabuf *req;
	int ret;
	u8 req_mode = 0;

	if (FUNC2(cmd, addr))
		return -1;
	pos = FUNC4(cmd, ' ');
	if (!pos)
		return -1;
	pos++;
	if (FUNC5(pos, "req_mode=", 9) == 0) {
		int val = FUNC0(pos + 9);

		if (val < 0)
			return -1;
		req_mode = val;
		pos += 11;
		pos = FUNC4(pos, ' ');
		if (!pos)
			return -1;
		pos++;
	}
	req = FUNC7(pos);
	if (!req)
		return -1;

	ret = FUNC1(hapd, addr, req_mode, req);
	FUNC6(req);
	if (ret >= 0)
		ret = FUNC3(reply, reply_size, "%d", ret);
	return ret;
}