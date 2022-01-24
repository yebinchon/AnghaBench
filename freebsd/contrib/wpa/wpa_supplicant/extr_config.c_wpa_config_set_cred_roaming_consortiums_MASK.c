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
struct wpa_cred {unsigned int num_roaming_consortiums; int /*<<< orphan*/  roaming_consortiums_len; int /*<<< orphan*/  roaming_consortiums; } ;
typedef  int /*<<< orphan*/  roaming_consortiums_len ;
typedef  int /*<<< orphan*/  roaming_consortiums ;

/* Variables and functions */
 int MAX_ROAMING_CONS ; 
 int MAX_ROAMING_CONS_OI_LEN ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t*,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (char const*,char) ; 
 size_t FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC6(struct wpa_cred *cred,
						   const char *value)
{
	u8 roaming_consortiums[MAX_ROAMING_CONS][MAX_ROAMING_CONS_OI_LEN];
	size_t roaming_consortiums_len[MAX_ROAMING_CONS];
	unsigned int num_roaming_consortiums = 0;
	const char *pos, *end;
	size_t len;

	FUNC2(roaming_consortiums, 0, sizeof(roaming_consortiums));
	FUNC2(roaming_consortiums_len, 0, sizeof(roaming_consortiums_len));

	for (pos = value;;) {
		end = FUNC3(pos, ',');
		len = end ? (size_t) (end - pos) : FUNC4(pos);
		if (!end && len == 0)
			break;
		if (len == 0 || (len & 1) != 0 ||
		    len / 2 > MAX_ROAMING_CONS_OI_LEN ||
		    FUNC0(pos,
			       roaming_consortiums[num_roaming_consortiums],
			       len / 2) < 0) {
			FUNC5(MSG_INFO,
				   "Invalid roaming_consortiums entry: %s",
				   pos);
			return -1;
		}
		roaming_consortiums_len[num_roaming_consortiums] = len / 2;
		num_roaming_consortiums++;

		if (!end)
			break;

		if (num_roaming_consortiums >= MAX_ROAMING_CONS) {
			FUNC5(MSG_INFO,
				   "Too many roaming_consortiums OIs");
			return -1;
		}

		pos = end + 1;
	}

	FUNC1(cred->roaming_consortiums, roaming_consortiums,
		  sizeof(roaming_consortiums));
	FUNC1(cred->roaming_consortiums_len, roaming_consortiums_len,
		  sizeof(roaming_consortiums_len));
	cred->num_roaming_consortiums = num_roaming_consortiums;

	return 0;
}