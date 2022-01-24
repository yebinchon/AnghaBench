#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t size; } ;
struct cpp_demangle_data {char* cur; TYPE_1__ output; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpp_demangle_data*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpp_demangle_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 char* FUNC7 (TYPE_1__*,size_t,int,size_t*) ; 

__attribute__((used)) static int
FUNC8(struct cpp_demangle_data *ddata)
{
	size_t i, num_len, exp_len, p_idx, idx;
	const char *num;
	char *exp;

	if (ddata == NULL || *(++ddata->cur) == '\0')
		return (0);

	if (*ddata->cur == '_') {
		if (*(++ddata->cur) == '\0')
			return (0);

		if (!FUNC4(ddata, 0))
			return (0);

		if (!FUNC2(ddata, "[]", 2))
			return (0);
	} else {
		if (FUNC0(*ddata->cur) != 0) {
			num = ddata->cur;
			while (FUNC0(*ddata->cur) != 0)
				++ddata->cur;
			if (*ddata->cur != '_')
				return (0);
			num_len = ddata->cur - num;
			FUNC1(num_len > 0);
			if (*(++ddata->cur) == '\0')
				return (0);
			if (!FUNC4(ddata, 0))
				return (0);
			if (!FUNC2(ddata, "[", 1))
				return (0);
			if (!FUNC2(ddata, num, num_len))
				return (0);
			if (!FUNC2(ddata, "]", 1))
				return (0);
		} else {
			p_idx = ddata->output.size;
			if (!FUNC3(ddata))
				return (0);
			if ((exp = FUNC7(&ddata->output, p_idx,
				 ddata->output.size - 1, &exp_len)) == NULL)
				return (0);
			idx = ddata->output.size;
			for (i = p_idx; i < idx; ++i)
				if (!FUNC6(&ddata->output)) {
					FUNC5(exp);
					return (0);
				}
			if (*ddata->cur != '_') {
				FUNC5(exp);
				return (0);
			}
			++ddata->cur;
			if (*ddata->cur == '\0') {
				FUNC5(exp);
				return (0);
			}
			if (!FUNC4(ddata, 0)) {
				FUNC5(exp);
				return (0);
			}
			if (!FUNC2(ddata, "[", 1)) {
				FUNC5(exp);
				return (0);
			}
			if (!FUNC2(ddata, exp, exp_len)) {
				FUNC5(exp);
				return (0);
			}
			if (!FUNC2(ddata, "]", 1)) {
				FUNC5(exp);
				return (0);
			}
			FUNC5(exp);
		}
	}

	return (1);
}