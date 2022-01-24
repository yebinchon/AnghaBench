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
 int FUNC0 (struct cpp_demangle_data*) ; 
 int FUNC1 (struct cpp_demangle_data*) ; 
 int FUNC2 (struct cpp_demangle_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct cpp_demangle_data *ddata)
{

	if (ddata == NULL || *ddata->cur == '\0')
		return (0);

	switch (*ddata->cur) {
	case 'L':
		return (FUNC0(ddata));
	case 'X':
		return (FUNC1(ddata));
	}

	return (FUNC2(ddata, 0));
}