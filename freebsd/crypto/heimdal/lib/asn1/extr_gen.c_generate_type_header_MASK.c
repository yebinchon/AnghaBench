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
struct TYPE_3__ {char* name; int /*<<< orphan*/  type; int /*<<< orphan*/  gen_name; } ;
typedef  TYPE_1__ Symbol ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  headerfile ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (const Symbol *s)
{
    int preservep = FUNC3(s->name) ? TRUE : FALSE;

    FUNC2 (headerfile, "/*\n");
    FUNC2 (headerfile, "%s ::= ", s->name);
    FUNC0 (0, s->type);
    FUNC2 (headerfile, "\n*/\n\n");

    FUNC2 (headerfile, "typedef ");
    FUNC1 (0, s->gen_name, s->gen_name, s->type, TRUE, preservep);

    FUNC2 (headerfile, "\n");
}