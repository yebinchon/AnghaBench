#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_2__ {int Integer; int /*<<< orphan*/  String; } ;

/* Variables and functions */
 int T_EOC ; 
 int T_String ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ yylval ; 

__attribute__((used)) static int
FUNC2(
	char *lexeme
	)
{
	char *pch;

	/*
	 * ignore end of line whitespace
	 */
	pch = lexeme;
	while (*pch && FUNC1((u_char)*pch))
		pch++;

	if (!*pch) {
		yylval.Integer = T_EOC;
		return yylval.Integer;
	}

	yylval.String = FUNC0(lexeme);
	return T_String;
}