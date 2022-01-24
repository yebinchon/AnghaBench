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
typedef  int /*<<< orphan*/  td ;
struct test_data {int member_0; int member_1; int member_2; char* member_3; scalar_t__ ok; size_t expected_len; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct map_page {int dummy; } ;
typedef  int TESTuint32 ;

/* Variables and functions */
 int /*<<< orphan*/  OVERRUN ; 
 int FUNC0 (void*,int /*<<< orphan*/ ,int*,size_t*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct map_page**) ; 
 int /*<<< orphan*/  FUNC2 (struct map_page*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int
FUNC4(void)
{
    struct test_data td[] = {
	{ 1, 3, 3, "\x02\x01\x00"},
	{ 1, 3, 3, "\x02\x01\x7f"},
	{ 1, 4, 4, "\x02\x02\x00\x80"},
	{ 1, 4, 4, "\x02\x02\x01\x00"},
	{ 1, 4, 4, "\x02\x02\x02\x00"},
	{ 0, 3, 0, "\x02\x02\x00"},
	{ 0, 3, 0, "\x02\x7f\x7f"},
	{ 0, 4, 0, "\x02\x03\x00\x80"},
	{ 0, 4, 0, "\x02\x7f\x01\x00"},
	{ 0, 5, 0, "\x02\xff\x7f\x02\x00"}
    };
    size_t sz;
    TESTuint32 values[] = {0, 127, 128, 256, 512,
			 0, 127, 128, 256, 512 };
    TESTuint32 u;
    int i, ret, failed = 0;
    void *buf;

    for (i = 0; i < sizeof(td)/sizeof(td[0]); i++) {
	struct map_page *page;

	buf = FUNC1(OVERRUN, td[i].data, td[i].len, &page);

	ret = FUNC0(buf, td[i].len, &u, &sz);
	if (ret) {
	    if (td[i].ok) {
		FUNC3("failed with tag len test %d\n", i);
		failed = 1;
	    }
	} else {
	    if (td[i].ok == 0) {
		FUNC3("failed with success for tag len test %d\n", i);
		failed = 1;
	    }
	    if (td[i].expected_len != sz) {
		FUNC3("wrong expected size for tag test %d\n", i);
		failed = 1;
	    }
	    if (values[i] != u) {
		FUNC3("wrong value for tag test %d\n", i);
		failed = 1;
	    }
	}
	FUNC2(page, "test", "decode");
    }
    return failed;
}