#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ud; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__ value; int /*<<< orphan*/ * key; } ;
typedef  TYPE_2__ ucl_object_t ;
typedef  int /*<<< orphan*/ * ucl_object_iter_t ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_SystemError ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ UCL_ARRAY ; 
 scalar_t__ UCL_OBJECT ; 
 scalar_t__ UCL_USERDATA ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__ const*) ; 
 TYPE_2__* FUNC8 (TYPE_2__ const*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__ const*) ; 

__attribute__((used)) static PyObject *
FUNC10 (ucl_object_t const *obj)
{
	const ucl_object_t *tmp;
	ucl_object_iter_t it = NULL;

	tmp = obj;

	while ((obj = FUNC8 (tmp, &it, false))) {
		PyObject *val;

		val = FUNC7(obj);
		if (!val) {
			PyObject *key = NULL;

			if (obj->key != NULL) {
				key = FUNC6("s", FUNC9(obj));
			}

			if (obj->type == UCL_OBJECT) {
				const ucl_object_t *cur;
				ucl_object_iter_t it_obj = NULL;

				val = FUNC1();

				while ((cur = FUNC8 (obj, &it_obj, true))) {
					PyObject *keyobj = FUNC6("s",FUNC9(cur));
					FUNC2(val, keyobj, FUNC10(cur));
				}
			} else if (obj->type == UCL_ARRAY) {
				const ucl_object_t *cur;
				ucl_object_iter_t it_obj = NULL;

				val = FUNC5(0);

				while ((cur = FUNC8 (obj, &it_obj, true))) {
					FUNC4(val, FUNC10(cur));
				}
			} else if (obj->type == UCL_USERDATA) {
				// XXX: this should be
				// PyBytes_FromStringAndSize; where is the
				// length from?
				val = FUNC0(obj->value.ud);
			}
		}
		return val;
	}

	FUNC3(PyExc_SystemError, "unhandled type");
	return NULL;
}