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
struct cpp_demangle_data {char* cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpp_demangle_data*,char const*,int) ; 

__attribute__((used)) static int
FUNC2(struct cpp_demangle_data *ddata)
{
	bool negative;
	const char *start;

	if (ddata == NULL || *ddata->cur == '\0')
		return (0);

	/* offset could be negative */
	if (*ddata->cur == 'n') {
		negative = true;
		start = ddata->cur + 1;
	} else {
		negative = false;
		start = ddata->cur;
	}

	while (*ddata->cur != '_')
		++ddata->cur;

	if (negative && !FUNC1(ddata, "-", 1))
		return (0);

	FUNC0(start != NULL);

	if (!FUNC1(ddata, start, ddata->cur - start))
		return (0);
	if (!FUNC1(ddata, " ", 1))
		return (0);

	++ddata->cur;

	return (1);
}