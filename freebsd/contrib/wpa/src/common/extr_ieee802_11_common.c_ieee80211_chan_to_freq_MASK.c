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

/* Variables and functions */
 int /*<<< orphan*/  cn_op_class_cc ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  eu_op_class_cc ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jp_op_class_cc ; 
 int /*<<< orphan*/  us_op_class_cc ; 

int FUNC6(const char *country, u8 op_class, u8 chan)
{
	int freq;

	if (FUNC0(us_op_class_cc, country)) {
		freq = FUNC5(op_class, chan);
		if (freq > 0)
			return freq;
	}

	if (FUNC0(eu_op_class_cc, country)) {
		freq = FUNC2(op_class, chan);
		if (freq > 0)
			return freq;
	}

	if (FUNC0(jp_op_class_cc, country)) {
		freq = FUNC4(op_class, chan);
		if (freq > 0)
			return freq;
	}

	if (FUNC0(cn_op_class_cc, country)) {
		freq = FUNC1(op_class, chan);
		if (freq > 0)
			return freq;
	}

	return FUNC3(op_class, chan);
}