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
typedef  scalar_t__ ucl_emitter_t ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 scalar_t__ UCL_EMIT_CONFIG ; 
 scalar_t__ UCL_EMIT_MAX ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC8 (PyObject *self, PyObject *args)
{
	PyObject *obj;
	ucl_emitter_t emitter;
	ucl_object_t *root = NULL;

	emitter = UCL_EMIT_CONFIG;

	if (!FUNC0(args, "O|i", &obj, &emitter)) {
		FUNC1(PyExc_TypeError, "Unhandled object type");
		return NULL;
	}

	if (emitter >= UCL_EMIT_MAX) {
		FUNC1(PyExc_TypeError, "Invalid emitter type");
		return NULL;
	}

	if (obj == Py_None) {
		Py_RETURN_NONE;
	}

	root = FUNC4(obj);
	if (root) {
		PyObject *ret;
		char *buf;

		buf = (char *) FUNC6 (root, emitter);
		FUNC7 (root);
#if PY_MAJOR_VERSION < 3
		ret = FUNC2 (buf);
#else
		ret = PyUnicode_FromString (buf);
#endif
		FUNC5(buf);

		return ret;
	}

	return NULL;
}