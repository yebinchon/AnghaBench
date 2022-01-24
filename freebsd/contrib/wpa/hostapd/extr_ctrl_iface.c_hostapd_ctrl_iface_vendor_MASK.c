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
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC1 (struct hostapd_data*,unsigned int,unsigned int,int /*<<< orphan*/ *,size_t,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 
 size_t FUNC5 (char*) ; 
 unsigned int FUNC6 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*) ; 

__attribute__((used)) static int FUNC13(struct hostapd_data *hapd, char *cmd,
				     char *buf, size_t buflen)
{
	int ret;
	char *pos;
	u8 *data = NULL;
	unsigned int vendor_id, subcmd;
	struct wpabuf *reply;
	size_t data_len = 0;

	/* cmd: <vendor id> <subcommand id> [<hex formatted data>] */
	vendor_id = FUNC6(cmd, &pos, 16);
	if (!FUNC2((unsigned char) *pos))
		return -EINVAL;

	subcmd = FUNC6(pos, &pos, 10);

	if (*pos != '\0') {
		if (!FUNC2((unsigned char) *pos++))
			return -EINVAL;
		data_len = FUNC5(pos);
	}

	if (data_len) {
		data_len /= 2;
		data = FUNC4(data_len);
		if (!data)
			return -ENOBUFS;

		if (FUNC0(pos, data, data_len)) {
			FUNC7(MSG_DEBUG,
				   "Vendor command: wrong parameter format");
			FUNC3(data);
			return -EINVAL;
		}
	}

	reply = FUNC9((buflen - 1) / 2);
	if (!reply) {
		FUNC3(data);
		return -ENOBUFS;
	}

	ret = FUNC1(hapd, vendor_id, subcmd, data, data_len,
				     reply);

	if (ret == 0)
		ret = FUNC8(buf, buflen, FUNC11(reply),
				       FUNC12(reply));

	FUNC10(reply);
	FUNC3(data);

	return ret;
}