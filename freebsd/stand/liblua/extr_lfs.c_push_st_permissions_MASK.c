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
struct stat {int st_mode; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int S_IFMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC2(lua_State *L, struct stat *sb)
{
	char buf[20];

	/*
	 * XXX
	 * Could actually format as "-rwxrwxrwx" -- do we care?
	 */
	FUNC1(buf, sizeof(buf), "%o", sb->st_mode & ~S_IFMT);
	FUNC0(L, buf);
}