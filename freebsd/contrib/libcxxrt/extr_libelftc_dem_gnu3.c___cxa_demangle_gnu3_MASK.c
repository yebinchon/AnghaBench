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
struct TYPE_3__ {scalar_t__ size; } ;
struct cpp_demangle_data {char* cur; TYPE_1__ output; scalar_t__ mem_rst; scalar_t__ mem_cst; scalar_t__ mem_vat; scalar_t__ paren; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DEMANGLE_TRY_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpp_demangle_data*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpp_demangle_data*,int) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*,int) ; 
 char* FUNC8 (TYPE_1__*,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int) ; 

char *
FUNC10(const char *org)
{
	struct cpp_demangle_data ddata;
	ssize_t org_len;
	unsigned int limit;
	char *rtn = NULL;

	if (org == NULL)
		return (NULL);

	org_len = FUNC6(org);
	if (org_len > 11 && !FUNC7(org, "_GLOBAL__I_", 11)) {
		if ((rtn = FUNC4(org_len + 19)) == NULL)
			return (NULL);
		FUNC5(rtn, org_len + 19,
		    "global constructors keyed to %s", org + 11);
		return (rtn);
	}

	// Try demangling as a type for short encodings
	if ((org_len < 2) || (org[0] != '_' || org[1] != 'Z' )) {
		if (!FUNC1(&ddata, org))
			return (NULL);
		if (!FUNC3(&ddata, 0))
			goto clean;
		rtn = FUNC8(&ddata.output, (size_t *) NULL);
		goto clean;
	}


	if (!FUNC1(&ddata, org + 2))
		return (NULL);

	rtn = NULL;

	if (!FUNC2(&ddata))
		goto clean;

	limit = 0;
	while (*ddata.cur != '\0') {
		/*
		 * Breaking at some gcc info at tail. e.g) @@GLIBCXX_3.4
		 */
		if (*ddata.cur == '@' && *(ddata.cur + 1) == '@')
			break;
		if (!FUNC3(&ddata, 1))
			goto clean;
		if (limit++ > CPP_DEMANGLE_TRY_LIMIT)
			goto clean;
	}

	if (ddata.output.size == 0)
		goto clean;
	if (ddata.paren && !FUNC9(&ddata.output, ")", 1))
		goto clean;
	if (ddata.mem_vat && !FUNC9(&ddata.output, " volatile", 9))
		goto clean;
	if (ddata.mem_cst && !FUNC9(&ddata.output, " const", 6))
		goto clean;
	if (ddata.mem_rst && !FUNC9(&ddata.output, " restrict", 9))
		goto clean;

	rtn = FUNC8(&ddata.output, (size_t *) NULL);

clean:
	FUNC0(&ddata);

	return (rtn);
}