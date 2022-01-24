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
struct ucl_lua_funcdata {int /*<<< orphan*/  idx; int /*<<< orphan*/ * ret; int /*<<< orphan*/ * L; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  double int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
#define  LUA_TBOOLEAN 134 
#define  LUA_TFUNCTION 133 
#define  LUA_TNUMBER 132 
#define  LUA_TSTRING 131 
#define  LUA_TTABLE 130 
#define  LUA_TTHREAD 129 
#define  LUA_TUSERDATA 128 
 int /*<<< orphan*/  UCL_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 double FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  lua_ucl_userdata_dtor ; 
 int /*<<< orphan*/  lua_ucl_userdata_emitter ; 
 struct ucl_lua_funcdata* FUNC13 (int) ; 
 int /*<<< orphan*/  ucl_null ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (double) ; 
 int /*<<< orphan*/ * FUNC16 (double) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ucl_object_t *
FUNC21 (lua_State *L, int idx)
{
	int type;
	double num;
	ucl_object_t *obj = NULL;
	struct ucl_lua_funcdata *fd;

	type = FUNC12 (L, idx);

	switch (type) {
	case LUA_TSTRING:
		obj = FUNC17 (FUNC11 (L, idx), 0, 0);
		break;
	case LUA_TNUMBER:
		num = FUNC9 (L, idx);
		if (num == (int64_t)num) {
			obj = FUNC16 (num);
		}
		else {
			obj = FUNC15 (num);
		}
		break;
	case LUA_TBOOLEAN:
		obj = FUNC14 (FUNC8 (L, idx));
		break;
	case LUA_TUSERDATA:
		if (FUNC10 (L, idx) == ucl_null) {
			obj = FUNC20 (UCL_NULL);
		}
		break;
	case LUA_TTABLE:
	case LUA_TFUNCTION:
	case LUA_TTHREAD:
		if (FUNC0 (L, idx, "__gen_ucl")) {
			if (FUNC4 (L, -1)) {
				FUNC7 (L, 3); /* gen, obj, func */
				FUNC3 (L, 1); /* func, gen, obj */
				FUNC3 (L, 2); /* func, obj, gen */
				FUNC2(L, 2, 1);
				obj = FUNC21 (L, 1);
			}
			FUNC5 (L, 2);
		}
		else {
			if (type == LUA_TTABLE) {
				obj = FUNC18 (L, idx);
			}
			else if (type == LUA_TFUNCTION) {
				fd = FUNC13 (sizeof (*fd));
				if (fd != NULL) {
					FUNC6 (L, idx);
					fd->L = L;
					fd->ret = NULL;
					fd->idx = FUNC1 (L, LUA_REGISTRYINDEX);

					obj = FUNC19 (lua_ucl_userdata_dtor,
							lua_ucl_userdata_emitter, (void *)fd);
				}
			}
		}
		break;
	}

	return obj;
}