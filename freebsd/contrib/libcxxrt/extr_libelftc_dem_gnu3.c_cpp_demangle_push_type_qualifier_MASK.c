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
struct TYPE_2__ {char const** container; int /*<<< orphan*/  size; } ;
struct vector_type_qualifier {size_t size; int* q_container; TYPE_1__ ext_name; } ;
struct vector_str {int dummy; } ;
struct cpp_demangle_data {int dummy; } ;

/* Variables and functions */
#define  TYPE_CMX 136 
#define  TYPE_CST 135 
#define  TYPE_EXT 134 
#define  TYPE_IMG 133 
#define  TYPE_PTR 132 
#define  TYPE_REF 131 
#define  TYPE_RST 130 
#define  TYPE_VAT 129 
#define  TYPE_VEC 128 
 int /*<<< orphan*/  FUNC0 (struct cpp_demangle_data*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct cpp_demangle_data*,struct vector_str*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,char const*) ; 
 size_t FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct vector_str*) ; 
 int /*<<< orphan*/  FUNC7 (struct vector_str*) ; 
 int /*<<< orphan*/  FUNC8 (struct vector_str*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC9(struct cpp_demangle_data *ddata,
    struct vector_type_qualifier *v, const char *type_str)
{
	struct vector_str subst_v;
	size_t idx, e_idx, e_len;
	int rtn;
	char *buf;

	if (ddata == NULL || v == NULL)
		return (0);

	if ((idx = v->size) == 0)
		return (1);

	rtn = 0;
	if (type_str != NULL) {
		if (!FUNC7(&subst_v))
			return (0);
		if (!FUNC8(&subst_v, type_str, FUNC5(type_str)))
			goto clean;
	}

	e_idx = 0;
	while (idx > 0) {
		switch (v->q_container[idx - 1]) {
		case TYPE_PTR:
			if (!FUNC0(ddata, "*", 1))
				goto clean;
			if (type_str != NULL) {
				if (!FUNC8(&subst_v, "*", 1))
					goto clean;
				if (!FUNC1(ddata,
				    &subst_v))
					goto clean;
			}
			break;

		case TYPE_REF:
			if (!FUNC0(ddata, "&", 1))
				goto clean;
			if (type_str != NULL) {
				if (!FUNC8(&subst_v, "&", 1))
					goto clean;
				if (!FUNC1(ddata,
				    &subst_v))
					goto clean;
			}
			break;

		case TYPE_CMX:
			if (!FUNC0(ddata, " complex", 8))
				goto clean;
			if (type_str != NULL) {
				if (!FUNC8(&subst_v, " complex", 8))
					goto clean;
				if (!FUNC1(ddata,
				    &subst_v))
					goto clean;
			}
			break;

		case TYPE_IMG:
			if (!FUNC0(ddata, " imaginary", 10))
				goto clean;
			if (type_str != NULL) {
				if (!FUNC8(&subst_v, " imaginary",
				    10))
					goto clean;
				if (!FUNC1(ddata,
				    &subst_v))
					goto clean;
			}
			break;

		case TYPE_EXT:
			if (v->ext_name.size == 0 ||
			    e_idx > v->ext_name.size - 1)
				goto clean;
			if ((e_len = FUNC5(v->ext_name.container[e_idx])) ==
			    0)
				goto clean;
			if ((buf = FUNC3(e_len + 2)) == NULL)
				goto clean;
			FUNC4(buf, e_len + 2, " %s",
			    v->ext_name.container[e_idx]);

			if (!FUNC0(ddata, buf, e_len + 1)) {
				FUNC2(buf);
				goto clean;
			}

			if (type_str != NULL) {
				if (!FUNC8(&subst_v, buf,
				    e_len + 1)) {
					FUNC2(buf);
					goto clean;
				}
				if (!FUNC1(ddata,
				    &subst_v)) {
					FUNC2(buf);
					goto clean;
				}
			}
			FUNC2(buf);
			++e_idx;
			break;

		case TYPE_RST:
			if (!FUNC0(ddata, " restrict", 9))
				goto clean;
			if (type_str != NULL) {
				if (!FUNC8(&subst_v, " restrict", 9))
					goto clean;
				if (!FUNC1(ddata,
				    &subst_v))
					goto clean;
			}
			break;

		case TYPE_VAT:
			if (!FUNC0(ddata, " volatile", 9))
				goto clean;
			if (type_str != NULL) {
				if (!FUNC8(&subst_v, " volatile", 9))
					goto clean;
				if (!FUNC1(ddata,
				    &subst_v))
					goto clean;
			}
			break;

		case TYPE_CST:
			if (!FUNC0(ddata, " const", 6))
				goto clean;
			if (type_str != NULL) {
				if (!FUNC8(&subst_v, " const", 6))
					goto clean;
				if (!FUNC1(ddata,
				    &subst_v))
					goto clean;
			}
			break;

		case TYPE_VEC:
			if (v->ext_name.size == 0 ||
			    e_idx > v->ext_name.size - 1)
				goto clean;
			if ((e_len = FUNC5(v->ext_name.container[e_idx])) ==
			    0)
				goto clean;
			if ((buf = FUNC3(e_len + 12)) == NULL)
				goto clean;
			FUNC4(buf, e_len + 12, " __vector(%s)",
			    v->ext_name.container[e_idx]);
			if (!FUNC0(ddata, buf, e_len + 11)) {
				FUNC2(buf);
				goto clean;
			}
			if (type_str != NULL) {
				if (!FUNC8(&subst_v, buf,
				    e_len + 11)) {
					FUNC2(buf);
					goto clean;
				}
				if (!FUNC1(ddata,
				    &subst_v)) {
					FUNC2(buf);
					goto clean;
				}
			}
			FUNC2(buf);
			++e_idx;
			break;
		}
		--idx;
	}

	rtn = 1;
clean:
	if (type_str != NULL)
		FUNC6(&subst_v);

	return (rtn);
}