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
typedef  int /*<<< orphan*/  ucl_object_t ;
struct ucl_schema_error {char* msg; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  Py_RETURN_TRUE ; 
 int /*<<< orphan*/  SchemaError ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ucl_schema_error*) ; 

__attribute__((used)) static PyObject *
FUNC5 (PyObject *self, PyObject *args)
{
	PyObject *dataobj, *schemaobj;
	ucl_object_t *data, *schema;
	bool r;
	struct ucl_schema_error err;

	if (!FUNC0 (args, "OO", &schemaobj, &dataobj)) {
		FUNC1 (PyExc_TypeError, "Unhandled object type");
		return NULL;
	}

	schema = FUNC2(schemaobj);
	if (!schema)
		return NULL;

	data = FUNC2(dataobj);
	if (!data)
		return NULL;

	// validation
	r = FUNC4 (schema, data, &err);
	FUNC3 (schema);
	FUNC3 (data);

	if (!r) {
		FUNC1 (SchemaError, err.msg);
		return NULL;
	}

	Py_RETURN_TRUE;
}