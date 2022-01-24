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
struct ucl_parser {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 struct ucl_parser* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ucl_parser*) ; 

__attribute__((used)) static int
FUNC2 (lua_State *L)
{
	struct ucl_parser *parser;

	parser = FUNC0 (L, 1);
	FUNC1 (parser);

	return 0;
}