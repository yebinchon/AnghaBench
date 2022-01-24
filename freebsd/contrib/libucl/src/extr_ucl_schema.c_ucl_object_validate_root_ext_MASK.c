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
struct ucl_schema_error {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCL_OBJECT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,struct ucl_schema_error*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

bool
FUNC3 (const ucl_object_t *schema,
		const ucl_object_t *obj,
		const ucl_object_t *root,
		ucl_object_t *ext_refs,
		struct ucl_schema_error *err)
{
	bool ret, need_unref = false;

	if (ext_refs == NULL) {
		ext_refs = FUNC0 (UCL_OBJECT);
		need_unref = true;
	}

	ret = FUNC2 (schema, obj, true, err, root, ext_refs);

	if (need_unref) {
		FUNC1 (ext_refs);
	}

	return ret;
}