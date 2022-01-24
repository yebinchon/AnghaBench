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
typedef  int /*<<< orphan*/  lua_State ;
typedef  enum ucl_emitter { ____Placeholder_ucl_emitter } ucl_emitter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int
FUNC4 (lua_State *L, const ucl_object_t *obj, enum ucl_emitter type)
{
	unsigned char *result;

	result = FUNC3 (obj, type);

	if (result != NULL) {
		FUNC2 (L, (const char *)result);
		FUNC0 (result);
	}
	else {
		FUNC1 (L);
	}

	return 1;
}