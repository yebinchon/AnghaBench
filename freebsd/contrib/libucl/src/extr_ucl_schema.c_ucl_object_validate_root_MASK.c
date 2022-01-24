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
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,struct ucl_schema_error*) ; 

bool
FUNC1 (const ucl_object_t *schema,
		const ucl_object_t *obj,
		const ucl_object_t *root,
		struct ucl_schema_error *err)
{
	return FUNC0 (schema, obj, root, NULL, err);
}