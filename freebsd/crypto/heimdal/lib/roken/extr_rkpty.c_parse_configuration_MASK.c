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
struct command {unsigned int lineno; char* str; int /*<<< orphan*/  type; struct command* next; } ;
typedef  int /*<<< orphan*/  s ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_EXPECT ; 
 int /*<<< orphan*/  CMD_PASSWORD ; 
 int /*<<< orphan*/  CMD_SEND ; 
 struct command* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 char* FUNC6 (char*,char*) ; 
 struct command** next ; 
 size_t FUNC7 (char*,char*) ; 

__attribute__((used)) static void
FUNC8(const char *fn)
{
    struct command *c;
    char s[1024];
    char *str;
    unsigned int lineno = 0;
    FILE *cmd;

    cmd = FUNC5(fn, "r");
    if (cmd == NULL)
	FUNC1(1, "open: %s", fn);

    while (FUNC4(s, sizeof(s),  cmd) != NULL) {

	s[FUNC7(s, "#\n")] = '\0';
	lineno++;

	c = FUNC0(1, sizeof(*c));
	if (c == NULL)
	    FUNC2(1, "malloc");

	c->lineno = lineno;
	(*next) = c;
	next = &(c->next);

	if ((str = FUNC6(s, "expect ")) != NULL) {
	    c->type = CMD_EXPECT;
	    c->str = str;
	} else if ((str = FUNC6(s, "send ")) != NULL) {
	    c->type = CMD_SEND;
	    c->str = str;
	} else if ((str = FUNC6(s, "password ")) != NULL) {
	    c->type = CMD_PASSWORD;
	    c->str = str;
	} else
	    FUNC2(1, "Invalid command on line %d: %s", lineno, s);
    }

    FUNC3(cmd);
}