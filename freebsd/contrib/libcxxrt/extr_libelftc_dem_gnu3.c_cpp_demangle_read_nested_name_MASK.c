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
struct cpp_demangle_data {char* cur; int mem_rst; int mem_vat; int mem_cst; scalar_t__ push_head; struct vector_str output; struct vector_str output_tmp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DEMANGLE_TRY_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (struct cpp_demangle_data*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpp_demangle_data*,struct vector_str*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct vector_str*) ; 
 int /*<<< orphan*/  FUNC8 (struct vector_str*) ; 
 int /*<<< orphan*/  FUNC9 (struct vector_str*,char*,int) ; 
 char* FUNC10 (struct vector_str*,size_t,int,size_t*) ; 

__attribute__((used)) static int
FUNC11(struct cpp_demangle_data *ddata)
{
	struct vector_str *output, v;
	size_t limit, p_idx, subst_str_len;
	int rtn;
	char *subst_str;

	if (ddata == NULL || *ddata->cur != 'N')
		return (0);
	if (*(++ddata->cur) == '\0')
		return (0);

	while (*ddata->cur == 'r' || *ddata->cur == 'V' ||
	    *ddata->cur == 'K') {
		switch (*ddata->cur) {
		case 'r':
			ddata->mem_rst = true;
			break;
		case 'V':
			ddata->mem_vat = true;
			break;
		case 'K':
			ddata->mem_cst = true;
			break;
		}
		++ddata->cur;
	}

	output = ddata->push_head > 0 ? &ddata->output_tmp : &ddata->output;
	if (!FUNC8(&v))
		return (0);

	rtn = 0;
	limit = 0;
	for (;;) {
		p_idx = output->size;
		switch (*ddata->cur) {
		case 'I':
			if (!FUNC3(ddata))
				goto clean;
			break;
		case 'S':
			if (!FUNC2(ddata))
				goto clean;
			break;
		case 'T':
			if (!FUNC4(ddata))
				goto clean;
			break;
		default:
			if (!FUNC5(ddata))
				goto clean;
		}

		if ((subst_str = FUNC10(output, p_idx,
		    output->size - 1, &subst_str_len)) == NULL)
			goto clean;
		if (!FUNC9(&v, subst_str, subst_str_len)) {
			FUNC6(subst_str);
			goto clean;
		}
		FUNC6(subst_str);

		if (!FUNC1(ddata, &v))
			goto clean;
		if (*ddata->cur == 'E')
			break;
		else if (*ddata->cur != 'I' &&
		    *ddata->cur != 'C' && *ddata->cur != 'D') {
			if (!FUNC0(ddata, "::", 2))
				goto clean;
			if (!FUNC9(&v, "::", 2))
				goto clean;
		}
		if (limit++ > CPP_DEMANGLE_TRY_LIMIT)
			goto clean;
	}

	++ddata->cur;
	rtn = 1;

clean:
	FUNC7(&v);

	return (rtn);
}