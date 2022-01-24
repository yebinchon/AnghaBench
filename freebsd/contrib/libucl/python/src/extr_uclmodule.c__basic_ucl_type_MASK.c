#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int type; } ;
typedef  TYPE_1__ ucl_object_t ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,long long) ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
#define  UCL_BOOLEAN 133 
#define  UCL_FLOAT 132 
#define  UCL_INT 131 
#define  UCL_NULL 130 
#define  UCL_STRING 129 
#define  UCL_TIME 128 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 
 long long FUNC3 (TYPE_1__ const*) ; 
 scalar_t__ FUNC4 (TYPE_1__ const*) ; 
 long long FUNC5 (TYPE_1__ const*) ; 

__attribute__((used)) static PyObject *
FUNC6 (ucl_object_t const *obj)
{
	switch (obj->type) {
	case UCL_INT:
		return FUNC1 ("L", (long long)FUNC4 (obj));
	case UCL_FLOAT:
		return FUNC1 ("d", FUNC3 (obj));
	case UCL_STRING:
		return FUNC1 ("s", FUNC5 (obj));
	case UCL_BOOLEAN:
		return FUNC0 (FUNC2 (obj));
	case UCL_TIME:
		return FUNC1 ("d", FUNC3 (obj));
	case UCL_NULL:
		Py_RETURN_NONE;
	}
	return NULL;
}