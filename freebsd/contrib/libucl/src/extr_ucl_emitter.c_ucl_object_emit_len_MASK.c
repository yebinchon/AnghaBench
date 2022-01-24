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
typedef  int /*<<< orphan*/  ucl_object_t ;
struct ucl_emitter_functions {TYPE_1__* ud; } ;
typedef  enum ucl_emitter { ____Placeholder_ucl_emitter } ucl_emitter ;
struct TYPE_2__ {size_t i; } ;
typedef  TYPE_1__ UT_string ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int,struct ucl_emitter_functions*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ucl_emitter_functions*) ; 
 struct ucl_emitter_functions* FUNC2 (void**) ; 

unsigned char *
FUNC3 (const ucl_object_t *obj, enum ucl_emitter emit_type,
		size_t *outlen)
{
	unsigned char *res = NULL;
	struct ucl_emitter_functions *func;
	UT_string *s;

	if (obj == NULL) {
		return NULL;
	}

	func = FUNC2 ((void **)&res);

	if (func != NULL) {
		s = func->ud;
		FUNC0 (obj, emit_type, func, NULL);

		if (outlen != NULL) {
			*outlen = s->i;
		}

		FUNC1 (func);
	}

	return res;
}