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
typedef  int /*<<< orphan*/  title ;

/* Variables and functions */
 size_t MAX_WEP_KEY_LEN ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char const*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,unsigned int,...) ; 

__attribute__((used)) static int FUNC8(u8 *key, size_t *len, int line,
				    const char *value, int idx)
{
	char *buf, title[20];
	int res;

	buf = FUNC5(value, len);
	if (buf == NULL) {
		FUNC7(MSG_ERROR, "Line %d: Invalid WEP key %d '%s'.",
			   line, idx, value);
		return -1;
	}
	if (*len > MAX_WEP_KEY_LEN) {
		FUNC7(MSG_ERROR, "Line %d: Too long WEP key %d '%s'.",
			   line, idx, value);
		FUNC0(buf);
		return -1;
	}
	if (*len && *len != 5 && *len != 13 && *len != 16) {
		FUNC7(MSG_ERROR, "Line %d: Invalid WEP key length %u - "
			   "this network block will be ignored",
			   line, (unsigned int) *len);
	}
	FUNC1(key, buf, *len);
	FUNC4(buf);
	res = FUNC2(title, sizeof(title), "wep_key%d", idx);
	if (!FUNC3(sizeof(title), res))
		FUNC6(MSG_MSGDUMP, title, key, *len);
	return 0;
}