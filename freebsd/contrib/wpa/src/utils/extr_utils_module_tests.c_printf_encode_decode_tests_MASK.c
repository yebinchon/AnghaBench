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
struct printf_test_data {int const* data; int len; char* encoded; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  bin ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int*,int const*,size_t) ; 
 int FUNC3 (int*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int const*,int) ; 
 struct printf_test_data* printf_tests ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC7(void)
{
	int i;
	size_t binlen;
	char buf[100];
	u8 bin[100];
	int errors = 0;
	int array[10];

	FUNC6(MSG_INFO, "printf encode/decode tests");

	for (i = 0; printf_tests[i].data; i++) {
		const struct printf_test_data *test = &printf_tests[i];
		FUNC4(buf, sizeof(buf), test->data, test->len);
		FUNC6(MSG_INFO, "%d: -> \"%s\"", i, buf);

		binlen = FUNC3(bin, sizeof(bin), buf);
		if (binlen != test->len ||
		    FUNC2(bin, test->data, binlen) != 0) {
			FUNC5(MSG_ERROR, "Error in decoding#1",
				    bin, binlen);
			errors++;
		}

		binlen = FUNC3(bin, sizeof(bin), test->encoded);
		if (binlen != test->len ||
		    FUNC2(bin, test->data, binlen) != 0) {
			FUNC5(MSG_ERROR, "Error in decoding#2",
				    bin, binlen);
			errors++;
		}
	}

	buf[5] = 'A';
	FUNC4(buf, 5, (const u8 *) "abcde", 5);
	if (buf[5] != 'A') {
		FUNC6(MSG_ERROR, "Error in bounds checking#1");
		errors++;
	}

	for (i = 5; i < 10; i++) {
		buf[i] = 'A';
		FUNC4(buf, i, (const u8 *) "\xdd\xdd\xdd\xdd\xdd", 5);
		if (buf[i] != 'A') {
			FUNC6(MSG_ERROR, "Error in bounds checking#2(%d)",
				   i);
			errors++;
		}
	}

	if (FUNC3(bin, 3, "abcde") != 2)
		errors++;

	if (FUNC3(bin, 3, "\\xa") != 1 || bin[0] != 10)
		errors++;

	if (FUNC3(bin, 3, "\\xq") != 1 || bin[0] != 'q')
		errors++;

	if (FUNC3(bin, 3, "\\a") != 1 || bin[0] != 'a')
		errors++;

	array[0] = 10;
	array[1] = 10;
	array[2] = 5;
	array[3] = 10;
	array[4] = 5;
	array[5] = 0;
	if (FUNC0(array) != 5)
		errors++;
	FUNC1(array);
	if (FUNC0(array) != 2)
		errors++;

	if (errors) {
		FUNC6(MSG_ERROR, "%d printf test(s) failed", errors);
		return -1;
	}

	return 0;
}