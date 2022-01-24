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
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SchemaError ; 
 int /*<<< orphan*/  UCL_EMIT_CONFIG ; 
 int /*<<< orphan*/  UCL_EMIT_JSON ; 
 int /*<<< orphan*/  UCL_EMIT_JSON_COMPACT ; 
 int /*<<< orphan*/  UCL_EMIT_MSGPACK ; 
 int /*<<< orphan*/  UCL_EMIT_YAML ; 

__attribute__((used)) static void
FUNC4(PyObject *mod)
{
	FUNC1(mod, UCL_EMIT_JSON);
	FUNC1(mod, UCL_EMIT_JSON_COMPACT);
	FUNC1(mod, UCL_EMIT_CONFIG);
	FUNC1(mod, UCL_EMIT_YAML);
	FUNC1(mod, UCL_EMIT_MSGPACK);

	SchemaError = FUNC0("ucl.SchemaError", NULL, NULL);
	FUNC3(SchemaError);
	FUNC2(mod, "SchemaError", SchemaError);
}