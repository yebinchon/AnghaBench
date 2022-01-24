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
struct vector_str {size_t size; } ;
struct cpp_demangle_data {char* cur; scalar_t__ push_head; struct vector_str output; struct vector_str output_tmp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpp_demangle_data*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpp_demangle_data*,struct vector_str*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct vector_str*) ; 
 int /*<<< orphan*/  FUNC6 (struct vector_str*) ; 
 int /*<<< orphan*/  FUNC7 (struct vector_str*,char*,size_t) ; 
 char* FUNC8 (struct vector_str*,size_t,int,size_t*) ; 

__attribute__((used)) static int
FUNC9(struct cpp_demangle_data *ddata)
{
	struct vector_str *output, v;
	size_t p_idx, subst_str_len;
	int rtn;
	char *subst_str;

	if (ddata == NULL)
		return (0);

	if (!FUNC6(&v))
		return (0);

	subst_str = NULL;
	rtn = 0;
	if (!FUNC0(ddata, "std::", 5))
		goto clean;

	if (!FUNC7(&v, "std::", 5))
		goto clean;

	ddata->cur += 2;

	output = ddata->push_head > 0 ? &ddata->output_tmp : &ddata->output;

	p_idx = output->size;
	if (!FUNC3(ddata))
		goto clean;

	if ((subst_str = FUNC8(output, p_idx, output->size - 1,
	    &subst_str_len)) == NULL)
		goto clean;

	if (!FUNC7(&v, subst_str, subst_str_len))
		goto clean;

	if (!FUNC1(ddata, &v))
		goto clean;

	if (*ddata->cur == 'I') {
		p_idx = output->size;
		if (!FUNC2(ddata))
			goto clean;
		FUNC4(subst_str);
		if ((subst_str = FUNC8(output, p_idx,
		    output->size - 1, &subst_str_len)) == NULL)
			goto clean;
		if (!FUNC7(&v, subst_str, subst_str_len))
			goto clean;
		if (!FUNC1(ddata, &v))
			goto clean;
	}

	rtn = 1;
clean:
	FUNC4(subst_str);
	FUNC5(&v);

	return (rtn);
}