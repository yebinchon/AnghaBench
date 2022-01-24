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
struct vector_str {int dummy; } ;
struct cpp_demangle_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cpp_demangle_data*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (struct vector_str*,size_t*) ; 

__attribute__((used)) static int
FUNC3(struct cpp_demangle_data *ddata, struct vector_str *v)
{
	size_t str_len;
	int rtn;
	char *str;

	if (ddata == NULL || v == NULL)
		return (0);

	if ((str = FUNC2(v, &str_len)) == NULL)
		return (0);

	rtn = FUNC0(ddata, str, str_len);

	FUNC1(str);

	return (rtn);
}