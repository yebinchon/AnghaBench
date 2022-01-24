#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {size_t size; } ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 size_t FUNC0 (char*,int,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (size_t) ; 

__attribute__((used)) static int
FUNC9(lua_State *L)
{
	FILE	**f;
	size_t	size, r;
	char * buf;

	if (FUNC2(L) < 1 || FUNC2(L) > 2) {
		FUNC5(L);
		FUNC3(L, 0);
		return 2;
	}

	f = (FILE**)FUNC7(L, 1);

	if (f == NULL || *f == NULL) {
		FUNC5(L);
		FUNC3(L, 0);
		return 2;
	}

	if (FUNC2(L) == 2)
		size = (size_t)FUNC6(L, 2);
	else
		size = (*f)->size;


	buf = (char*)FUNC8(size);
	r = FUNC0(buf, 1, size, *f);
	FUNC4(L, buf, r);
	FUNC1(buf);
	FUNC3(L, r);

	return 2;
}