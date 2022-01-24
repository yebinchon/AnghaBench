#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ ud; } ;
struct TYPE_10__ {int type; TYPE_1__ value; int /*<<< orphan*/ * next; } ;
typedef  TYPE_2__ ucl_object_t ;
struct ucl_lua_funcdata {int /*<<< orphan*/  idx; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
#define  UCL_BOOLEAN 134 
#define  UCL_FLOAT 133 
#define  UCL_INT 132 
#define  UCL_NULL 131 
#define  UCL_STRING 130 
#define  UCL_TIME 129 
#define  UCL_USERDATA 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__ const*) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_2__ const*) ; 

__attribute__((used)) static int
FUNC12 (lua_State *L, const ucl_object_t *obj,
		bool allow_array)
{
	struct ucl_lua_funcdata *fd;

	if (allow_array && obj->next != NULL) {
		/* Actually we need to push this as an array */
		return FUNC11 (L, obj);
	}

	switch (obj->type) {
	case UCL_BOOLEAN:
		FUNC1 (L, FUNC7 (obj));
		break;
	case UCL_STRING:
		FUNC5 (L, FUNC10 (obj));
		break;
	case UCL_INT:
#if LUA_VERSION_NUM >= 501
		lua_pushinteger (L, ucl_obj_toint (obj));
#else
		FUNC4 (L, FUNC9 (obj));
#endif
		break;
	case UCL_FLOAT:
	case UCL_TIME:
		FUNC4 (L, FUNC8 (obj));
		break;
	case UCL_NULL:
		FUNC0 (L, LUA_REGISTRYINDEX, "ucl.null");
		break;
	case UCL_USERDATA:
		fd = (struct ucl_lua_funcdata *)obj->value.ud;
		FUNC6 (L, LUA_REGISTRYINDEX, fd->idx);
		break;
	default:
		FUNC3 (L);
		break;
	}

	return 1;
}