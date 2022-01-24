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
struct vector_str {int size; int /*<<< orphan*/ * container; } ;
struct vector_type_qualifier {struct vector_str ext_name; } ;
struct cpp_demangle_data {scalar_t__ push_head; int paren; int pfirst; char* cur; struct vector_str output_tmp; struct vector_str output; struct vector_str subst; } ;

/* Variables and functions */
 int /*<<< orphan*/  TYPE_CMX ; 
 int /*<<< orphan*/  TYPE_CST ; 
 int /*<<< orphan*/  TYPE_EXT ; 
 int /*<<< orphan*/  TYPE_IMG ; 
 int /*<<< orphan*/  TYPE_PTR ; 
 int /*<<< orphan*/  TYPE_REF ; 
 int /*<<< orphan*/  TYPE_RST ; 
 int /*<<< orphan*/  TYPE_VAT ; 
 int /*<<< orphan*/  TYPE_VEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpp_demangle_data*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpp_demangle_data*,struct vector_type_qualifier*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpp_demangle_data*,char**) ; 
 int /*<<< orphan*/  FUNC5 (struct cpp_demangle_data*,int*,struct vector_type_qualifier*) ; 
 int /*<<< orphan*/  FUNC6 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct cpp_demangle_data*,long*) ; 
 int /*<<< orphan*/  FUNC8 (struct cpp_demangle_data*,char**) ; 
 int /*<<< orphan*/  FUNC9 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct cpp_demangle_data*) ; 
 scalar_t__ FUNC12 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct vector_str*) ; 
 int /*<<< orphan*/  FUNC18 (struct vector_str*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC19 (struct vector_str*) ; 
 int /*<<< orphan*/  FUNC20 (struct vector_str*) ; 
 int /*<<< orphan*/  FUNC21 (struct vector_str*,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct vector_str*,struct vector_str*) ; 
 char* FUNC23 (struct vector_str*,size_t,int,size_t*) ; 
 int /*<<< orphan*/  FUNC24 (struct vector_type_qualifier*) ; 
 int /*<<< orphan*/  FUNC25 (struct vector_type_qualifier*) ; 
 int /*<<< orphan*/  FUNC26 (struct vector_type_qualifier*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC27(struct cpp_demangle_data *ddata, int delimit)
{
	struct vector_type_qualifier v;
	struct vector_str *output;
	size_t p_idx, type_str_len;
	int extern_c, is_builtin;
	long len;
	char *type_str, *exp_str, *num_str;

	if (ddata == NULL)
		return (0);

	output = &ddata->output;
	if (ddata->output.size > 0 && !FUNC16(ddata->output.container[ddata->output.size - 1], ">", 1)) {
		ddata->push_head++;
		output = &ddata->output_tmp;
	} else if (delimit == 1) {
		if (ddata->paren == false) {
			if (!FUNC1(ddata, "(", 1))
				return (0);
			if (ddata->output.size < 2)
				return (0);
			ddata->paren = true;
			ddata->pfirst = true;
			/* Need pop function name */
			if (ddata->subst.size == 1 &&
			    !FUNC20(&ddata->subst))
				return (0);
		}

		if (ddata->pfirst)
			ddata->pfirst = false;
		else if (*ddata->cur != 'I' &&
		    !FUNC1(ddata, ", ", 2))
			return (0);
	}

	FUNC0(output != NULL);
	/*
	 * [r, V, K] [P, R, C, G, U] builtin, function, class-enum, array
	 * pointer-to-member, template-param, template-template-param, subst
	 */

	if (!FUNC25(&v))
		return (0);

	extern_c = 0;
	is_builtin = 1;
	p_idx = output->size;
	type_str = exp_str = num_str = NULL;
again:
	/* builtin type */
	switch (*ddata->cur) {
	case 'a':
		/* signed char */
		if (!FUNC1(ddata, "signed char", 11))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'A':
		/* array type */
		if (!FUNC3(ddata))
			goto clean;
		is_builtin = 0;
		goto rtn;

	case 'b':
		/* bool */
		if (!FUNC1(ddata, "bool", 4))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'C':
		/* complex pair */
		if (!FUNC26(&v, TYPE_CMX))
			goto clean;
		++ddata->cur;
		goto again;

	case 'c':
		/* char */
		if (!FUNC1(ddata, "char", 4))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'd':
		/* double */
		if (!FUNC1(ddata, "double", 6))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'D':
		++ddata->cur;
		switch (*ddata->cur) {
		case 'd':
			/* IEEE 754r decimal floating point (64 bits) */
			if (!FUNC1(ddata, "decimal64", 9))
				goto clean;
			++ddata->cur;
			break;
		case 'e':
			/* IEEE 754r decimal floating point (128 bits) */
			if (!FUNC1(ddata, "decimal128", 10))
				goto clean;
			++ddata->cur;
			break;
		case 'f':
			/* IEEE 754r decimal floating point (32 bits) */
			if (!FUNC1(ddata, "decimal32", 9))
				goto clean;
			++ddata->cur;
			break;
		case 'h':
			/* IEEE 754r half-precision floating point (16 bits) */
			if (!FUNC1(ddata, "half", 4))
				goto clean;
			++ddata->cur;
			break;
		case 'i':
			/* char32_t */
			if (!FUNC1(ddata, "char32_t", 8))
				goto clean;
			++ddata->cur;
			break;
		case 'n':
			/* std::nullptr_t (i.e., decltype(nullptr)) */
			if (!FUNC1(ddata, "decltype(nullptr)",
			    17))
				goto clean;
			++ddata->cur;
			break;
		case 's':
			/* char16_t */
			if (!FUNC1(ddata, "char16_t", 8))
				goto clean;
			++ddata->cur;
			break;
		case 'v':
			/* gcc vector_size extension. */
			++ddata->cur;
			if (*ddata->cur == '_') {
				++ddata->cur;
				if (!FUNC4(ddata,
				    &exp_str))
					goto clean;
				if (!FUNC21(&v.ext_name, exp_str,
				    FUNC15(exp_str)))
					goto clean;
			} else {
				if (!FUNC8(ddata,
				    &num_str))
					goto clean;
				if (!FUNC21(&v.ext_name, num_str,
				    FUNC15(num_str)))
					goto clean;
			}
			if (*ddata->cur != '_')
				goto clean;
			++ddata->cur;
			if (!FUNC26(&v, TYPE_VEC))
				goto clean;
			goto again;
		default:
			goto clean;
		}
		goto rtn;

	case 'e':
		/* long double */
		if (!FUNC1(ddata, "long double", 11))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'f':
		/* float */
		if (!FUNC1(ddata, "float", 5))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'F':
		/* function */
		if (!FUNC5(ddata, &extern_c, &v))
			goto clean;
		is_builtin = 0;
		goto rtn;

	case 'g':
		/* __float128 */
		if (!FUNC1(ddata, "__float128", 10))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'G':
		/* imaginary */
		if (!FUNC26(&v, TYPE_IMG))
			goto clean;
		++ddata->cur;
		goto again;

	case 'h':
		/* unsigned char */
		if (!FUNC1(ddata, "unsigned char", 13))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'i':
		/* int */
		if (!FUNC1(ddata, "int", 3))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'j':
		/* unsigned int */
		if (!FUNC1(ddata, "unsigned int", 12))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'K':
		/* const */
		if (!FUNC26(&v, TYPE_CST))
			goto clean;
		++ddata->cur;
		goto again;

	case 'l':
		/* long */
		if (!FUNC1(ddata, "long", 4))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'm':
		/* unsigned long */
		if (!FUNC1(ddata, "unsigned long", 13))
			goto clean;

		++ddata->cur;

		goto rtn;
	case 'M':
		/* pointer to member */
		if (!FUNC9(ddata))
			goto clean;
		is_builtin = 0;
		goto rtn;

	case 'n':
		/* __int128 */
		if (!FUNC1(ddata, "__int128", 8))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'o':
		/* unsigned __int128 */
		if (!FUNC1(ddata, "unsigned __int128", 17))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'P':
		/* pointer */
		if (!FUNC26(&v, TYPE_PTR))
			goto clean;
		++ddata->cur;
		goto again;

	case 'r':
		/* restrict */
		if (!FUNC26(&v, TYPE_RST))
			goto clean;
		++ddata->cur;
		goto again;

	case 'R':
		/* reference */
		if (!FUNC26(&v, TYPE_REF))
			goto clean;
		++ddata->cur;
		goto again;

	case 's':
		/* short, local string */
		if (!FUNC1(ddata, "short", 5))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'S':
		/* substitution */
		if (!FUNC11(ddata))
			goto clean;
		is_builtin = 0;
		goto rtn;

	case 't':
		/* unsigned short */
		if (!FUNC1(ddata, "unsigned short", 14))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'T':
		/* template parameter */
		if (!FUNC13(ddata))
			goto clean;
		is_builtin = 0;
		goto rtn;

	case 'u':
		/* vendor extended builtin */
		++ddata->cur;
		if (!FUNC10(ddata))
			goto clean;
		is_builtin = 0;
		goto rtn;

	case 'U':
		/* vendor extended type qualifier */
		if (!FUNC7(ddata, &len))
			goto clean;
		if (len <= 0)
			goto clean;
		if (!FUNC21(&v.ext_name, ddata->cur, len))
			return (0);
		ddata->cur += len;
		if (!FUNC26(&v, TYPE_EXT))
			goto clean;
		goto again;

	case 'v':
		/* void */
		if (!FUNC1(ddata, "void", 4))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'V':
		/* volatile */
		if (!FUNC26(&v, TYPE_VAT))
			goto clean;
		++ddata->cur;
		goto again;

	case 'w':
		/* wchar_t */
		if (!FUNC1(ddata, "wchar_t", 7))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'x':
		/* long long */
		if (!FUNC1(ddata, "long long", 9))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'y':
		/* unsigned long long */
		if (!FUNC1(ddata, "unsigned long long", 18))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'z':
		/* ellipsis */
		if (!FUNC1(ddata, "...", 3))
			goto clean;
		++ddata->cur;
		goto rtn;
	}

	if (!FUNC6(ddata))
		goto clean;

	is_builtin = 0;
rtn:
	if ((type_str = FUNC23(output, p_idx, output->size - 1,
	    &type_str_len)) == NULL)
		goto clean;

	if (is_builtin == 0) {
		if (!FUNC18(&ddata->subst, type_str, type_str_len) &&
		    !FUNC21(&ddata->subst, type_str, type_str_len))
			goto clean;
	}

	if (!FUNC2(ddata, &v, type_str))
		goto clean;

	FUNC14(type_str);
	FUNC14(exp_str);
	FUNC14(num_str);
	FUNC24(&v);

	if (ddata->push_head > 0) {
		if (*ddata->cur == 'I' && FUNC12(ddata)
		    == 0)
			return (0);

		if (--ddata->push_head > 0)
			return (1);

		if (!FUNC21(&ddata->output_tmp, " ", 1))
			return (0);

		if (!FUNC22(&ddata->output,
		    &ddata->output_tmp))
			return (0);

		FUNC17(&ddata->output_tmp);
		if (!FUNC19(&ddata->output_tmp))
			return (0);

		if (!FUNC1(ddata, "(", 1))
			return (0);

		ddata->paren = true;
		ddata->pfirst = true;
	}

	return (1);
clean:
	FUNC14(type_str);
	FUNC14(exp_str);
	FUNC14(num_str);
	FUNC24(&v);

	return (0);
}