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
struct vector_type_qualifier {int dummy; } ;
struct TYPE_2__ {size_t size; char** container; } ;
struct cpp_demangle_data {float* cur; int /*<<< orphan*/  cmd; int /*<<< orphan*/  func_type; TYPE_1__ class_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DEMANGLE_TRY_LIMIT ; 
 int /*<<< orphan*/  READ_PTRMEM ; 
 int /*<<< orphan*/  FUNC0 (struct cpp_demangle_data*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpp_demangle_data*,struct vector_type_qualifier*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpp_demangle_data*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vector_type_qualifier*) ; 
 int /*<<< orphan*/  FUNC6 (struct vector_type_qualifier*) ; 

__attribute__((used)) static int
FUNC7(struct cpp_demangle_data *ddata, int *ext_c,
    struct vector_type_qualifier *v)
{
	size_t class_type_size, class_type_len, limit;
	const char *class_type;

	if (ddata == NULL || *ddata->cur != 'F' || v == NULL)
		return (0);

	++ddata->cur;
	if (*ddata->cur == 'Y') {
		if (ext_c != NULL)
			*ext_c = 1;
		++ddata->cur;
	}
	if (!FUNC2(ddata, 0))
		return (0);
	if (*ddata->cur != 'E') {
		if (!FUNC0(ddata, "(", 1))
			return (0);
		if (FUNC4(&ddata->cmd, READ_PTRMEM)) {
			if ((class_type_size = ddata->class_type.size) == 0)
				return (0);
			class_type =
			    ddata->class_type.container[class_type_size - 1];
			if (class_type == NULL)
				return (0);
			if ((class_type_len = FUNC3(class_type)) == 0)
				return (0);
			if (!FUNC0(ddata, class_type,
			    class_type_len))
				return (0);
			if (!FUNC0(ddata, "::*", 3))
				return (0);
			++ddata->func_type;
		} else {
			if (!FUNC1(ddata, v,
			    (const char *) NULL))
				return (0);
			FUNC5(v);
			if (!FUNC6(v))
				return (0);
		}

		if (!FUNC0(ddata, ")(", 2))
			return (0);

		limit = 0;
		for (;;) {
			if (!FUNC2(ddata, 0))
				return (0);
			if (*ddata->cur == 'E')
				break;
			if (limit++ > CPP_DEMANGLE_TRY_LIMIT)
				return (0);
		}

		if (FUNC4(&ddata->cmd, READ_PTRMEM) == 1) {
			if (!FUNC1(ddata, v,
			    (const char *) NULL))
				return (0);
			FUNC5(v);
			if (!FUNC6(v))
				return (0);
		}

		if (!FUNC0(ddata, ")", 1))
			return (0);
	}

	++ddata->cur;

	return (1);
}