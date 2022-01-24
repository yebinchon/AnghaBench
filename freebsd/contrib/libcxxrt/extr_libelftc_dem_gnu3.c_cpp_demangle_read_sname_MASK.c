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
struct TYPE_2__ {int size; int /*<<< orphan*/ * container; } ;
struct cpp_demangle_data {char* cur; TYPE_1__ output; int /*<<< orphan*/  last_sname; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  READ_TMPL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct cpp_demangle_data*,char*,long) ; 
 scalar_t__ FUNC2 (struct cpp_demangle_data*,long*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct cpp_demangle_data *ddata)
{
	long len;
	int err;

	if (ddata == NULL || FUNC2(ddata, &len) == 0 ||
	    len <= 0)
		return (0);

	if (len == 12 && (FUNC3("_GLOBAL__N_1", ddata->cur, 12) == 0))
		err = FUNC1(ddata, "(anonymous namespace)", 21);
	else
		err = FUNC1(ddata, ddata->cur, len);

	if (err == 0)
		return (0);

	FUNC0(ddata->output.size > 0);
	if (FUNC4(&ddata->cmd, READ_TMPL) == 0)
		ddata->last_sname =
		    ddata->output.container[ddata->output.size - 1];

	ddata->cur += len;

	return (1);
}