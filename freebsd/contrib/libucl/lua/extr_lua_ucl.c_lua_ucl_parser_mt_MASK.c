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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  PARSER_META ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  lua_ucl_parser_gc ; 
 int /*<<< orphan*/  lua_ucl_parser_get_object ; 
 int /*<<< orphan*/  lua_ucl_parser_get_object_wrapped ; 
 int /*<<< orphan*/  lua_ucl_parser_parse_file ; 
 int /*<<< orphan*/  lua_ucl_parser_parse_string ; 
 int /*<<< orphan*/  lua_ucl_parser_validate ; 

__attribute__((used)) static void
FUNC5 (lua_State *L)
{
	FUNC0 (L, PARSER_META);

	FUNC3(L, -1);
	FUNC4(L, -2, "__index");

	FUNC2 (L, lua_ucl_parser_gc);
	FUNC4 (L, -2, "__gc");

	FUNC2 (L, lua_ucl_parser_parse_file);
	FUNC4 (L, -2, "parse_file");

	FUNC2 (L, lua_ucl_parser_parse_string);
	FUNC4 (L, -2, "parse_string");

	FUNC2 (L, lua_ucl_parser_get_object);
	FUNC4 (L, -2, "get_object");

	FUNC2 (L, lua_ucl_parser_get_object_wrapped);
	FUNC4 (L, -2, "get_object_wrapped");

	FUNC2 (L, lua_ucl_parser_validate);
	FUNC4 (L, -2, "validate");

	FUNC1 (L, 1);
}