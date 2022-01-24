#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t size; } ;
struct cpp_demangle_data {char* cur; int func_type; int /*<<< orphan*/  cmd; TYPE_1__ class_type; TYPE_1__ output; } ;

/* Variables and functions */
 int /*<<< orphan*/  READ_PTRMEM ; 
 int /*<<< orphan*/  FUNC0 (struct cpp_demangle_data*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpp_demangle_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,size_t) ; 
 char* FUNC7 (TYPE_1__*,size_t,int,size_t*) ; 

__attribute__((used)) static int
FUNC8(struct cpp_demangle_data *ddata)
{
	size_t class_type_len, i, idx, p_idx;
	int p_func_type, rtn;
	char *class_type;

	if (ddata == NULL || *ddata->cur != 'M' || *(++ddata->cur) == '\0')
		return (0);

	p_idx = ddata->output.size;
	if (!FUNC1(ddata, 0))
		return (0);

	if ((class_type = FUNC7(&ddata->output, p_idx,
	    ddata->output.size - 1, &class_type_len)) == NULL)
		return (0);

	rtn = 0;
	idx = ddata->output.size;
	for (i = p_idx; i < idx; ++i)
		if (!FUNC5(&ddata->output))
			goto clean1;

	if (!FUNC4(&ddata->cmd, READ_PTRMEM))
		goto clean1;

	if (!FUNC6(&ddata->class_type, class_type, class_type_len))
		goto clean2;

	p_func_type = ddata->func_type;
	if (!FUNC1(ddata, 0))
		goto clean3;

	if (p_func_type == ddata->func_type) {
		if (!FUNC0(ddata, " ", 1))
			goto clean3;
		if (!FUNC0(ddata, class_type, class_type_len))
			goto clean3;
		if (!FUNC0(ddata, "::*", 3))
			goto clean3;
	}

	rtn = 1;
clean3:
	if (!FUNC5(&ddata->class_type))
		rtn = 0;
clean2:
	if (!FUNC3(&ddata->cmd))
		rtn = 0;
clean1:
	FUNC2(class_type);

	return (rtn);
}