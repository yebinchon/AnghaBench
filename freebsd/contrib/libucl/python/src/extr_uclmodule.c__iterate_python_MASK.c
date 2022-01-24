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
typedef  scalar_t__ Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 char* FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/ * Py_True ; 
 int /*<<< orphan*/  UCL_ARRAY ; 
 int /*<<< orphan*/  UCL_OBJECT ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC25 () ; 
 int /*<<< orphan*/ * FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ucl_object_t *
FUNC27 (PyObject *obj)
{
	if (obj == Py_None) {
		return FUNC25();
	}
	else if (FUNC0 (obj)) {
		return FUNC20 (obj == Py_True);
	}
#if PY_MAJOR_VERSION < 3
	else if (FUNC8 (obj)) {
		return FUNC22 (FUNC7 (obj));
	}
#endif
	else if (FUNC10 (obj)) {
		return FUNC22 (FUNC9 (obj));
	}
	else if (FUNC6 (obj)) {
		return FUNC21 (FUNC5 (obj));
	}
	else if (FUNC17 (obj)) {
		ucl_object_t *ucl_str;
		PyObject *str = FUNC16(obj);
		ucl_str = FUNC23 (FUNC1 (str));
		FUNC18(str);
		return ucl_str;
	}
#if PY_MAJOR_VERSION < 3
	else if (FUNC15 (obj)) {
		return FUNC23 (FUNC14 (obj));
	}
#endif
	else if (FUNC2(obj)) {
		PyObject *key, *value;
		Py_ssize_t pos = 0;
		ucl_object_t *top, *elm;
		char *keystr = NULL;

		top = FUNC26 (UCL_OBJECT);

		while (FUNC3(obj, &pos, &key, &value)) {
			elm = FUNC27(value);
			
			if (FUNC17(key)) {
				PyObject *keyascii = FUNC16(key);
				keystr = FUNC1(keyascii);
				FUNC18(keyascii);
			}
#if PY_MAJOR_VERSION < 3
			else if (FUNC15(key)) {
				keystr = FUNC14(key);
			}
#endif
			else {
				FUNC4(PyExc_TypeError, "Unknown key type");
				return NULL;
			}

			FUNC24 (top, elm, keystr, 0, true);
		}

		return top;
	}
	else if (FUNC11(obj)) {
		PyObject *value;
		Py_ssize_t len, pos;
		ucl_object_t *top, *elm;

		len  = FUNC13(obj);
		top = FUNC26 (UCL_ARRAY);

		for (pos = 0; pos < len; pos++) {
			value = FUNC12(obj, pos);
			elm = FUNC27(value);
			FUNC19(top, elm);
		}

		return top;
	}
	else {
		FUNC4(PyExc_TypeError, "Unhandled object type");
		return NULL;
	}

	return NULL;
}