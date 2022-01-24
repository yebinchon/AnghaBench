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
struct ieee802_11_parse_test_data {scalar_t__ result; scalar_t__ count; int /*<<< orphan*/  len; scalar_t__ data; } ;
struct ieee802_11_elems {int dummy; } ;
typedef  scalar_t__ ParseRes ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,struct ieee802_11_elems*,int) ; 
 struct wpabuf* FUNC2 (int const*,int,int) ; 
 struct ieee802_11_parse_test_data* parse_tests ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 int* FUNC5 (struct wpabuf*) ; 
 int FUNC6 (struct wpabuf*) ; 

__attribute__((used)) static int FUNC7(void)
{
	int i, ret = 0;
	struct wpabuf *buf;

	FUNC3(MSG_INFO, "ieee802_11_parse tests");

	for (i = 0; parse_tests[i].data; i++) {
		const struct ieee802_11_parse_test_data *test;
		struct ieee802_11_elems elems;
		ParseRes res;

		test = &parse_tests[i];
		res = FUNC1(test->data, test->len, &elems, 1);
		if (res != test->result ||
		    FUNC0(test->data, test->len) != test->count) {
			FUNC3(MSG_ERROR, "ieee802_11_parse test %d failed",
				   i);
			ret = -1;
		}
	}

	if (FUNC2((const u8 *) "\x00\x01", 2, 0) != NULL)
	{
		FUNC3(MSG_ERROR,
			   "ieee802_11_vendor_ie_concat test failed");
		ret = -1;
	}

	buf = FUNC2((const u8 *) "\xdd\x05\x11\x22\x33\x44\x01\xdd\x05\x11\x22\x33\x44\x02\x00\x01",
					  16, 0x11223344);
	do {
		const u8 *pos;

		if (!buf) {
			FUNC3(MSG_ERROR,
				   "ieee802_11_vendor_ie_concat test 2 failed");
			ret = -1;
			break;
		}

		if (FUNC6(buf) != 2) {
			FUNC3(MSG_ERROR,
				   "ieee802_11_vendor_ie_concat test 3 failed");
			ret = -1;
			break;
		}

		pos = FUNC5(buf);
		if (pos[0] != 0x01 || pos[1] != 0x02) {
			FUNC3(MSG_ERROR,
				   "ieee802_11_vendor_ie_concat test 3 failed");
			ret = -1;
			break;
		}
	} while (0);
	FUNC4(buf);

	return ret;
}