#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ option; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHUT_RDWR ; 
 int TEST_CNT ; 
 int /*<<< orphan*/  buf ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  custom ; 
 scalar_t__ dst_addr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  opt_bandwidth ; 
 int /*<<< orphan*/  opt_latency ; 
 int /*<<< orphan*/  optimization ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rs ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 int FUNC10 () ; 
 int FUNC11 () ; 
 scalar_t__ size_option ; 
 TYPE_1__* test_size ; 
 int /*<<< orphan*/  transfer_size ; 

__attribute__((used)) static int FUNC12(void)
{
	int i, ret = 0;

	buf = FUNC4(!custom ? test_size[TEST_CNT - 1].size : transfer_size);
	if (!buf) {
		FUNC5("malloc");
		return -1;
	}

	if (!dst_addr) {
		ret = FUNC11();
		if (ret)
			goto free;
	}

	FUNC6("%-10s%-8s%-8s%-8s%-8s%8s %10s%13s\n",
	       "name", "bytes", "xfers", "iters", "total", "time", "Gb/sec", "usec/xfer");
	if (!custom) {
		optimization = opt_latency;
		ret = dst_addr ? FUNC0() : FUNC10();
		if (ret)
			goto free;

		for (i = 0; i < TEST_CNT; i++) {
			if (test_size[i].option > size_option)
				continue;
			FUNC3(test_size[i].size);
			FUNC9();
		}
		FUNC8(rs, SHUT_RDWR);
		FUNC7(rs);

		optimization = opt_bandwidth;
		ret = dst_addr ? FUNC0() : FUNC10();
		if (ret)
			goto free;
		for (i = 0; i < TEST_CNT; i++) {
			if (test_size[i].option > size_option)
				continue;
			FUNC2(test_size[i].size);
			FUNC9();
		}
	} else {
		ret = dst_addr ? FUNC0() : FUNC10();
		if (ret)
			goto free;

		ret = FUNC9();
	}

	FUNC8(rs, SHUT_RDWR);
	FUNC7(rs);
free:
	FUNC1(buf);
	return ret;
}