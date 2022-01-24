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
struct TYPE_3__ {char* gen_name; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ Symbol ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  codefile ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3 (const Symbol *s)
{
    int preserve = FUNC2(s->name) ? TRUE : FALSE;

    FUNC0 (codefile, "void ASN1CALL\n"
	     "free_%s(%s *data)\n"
	     "{\n",
	     s->gen_name, s->gen_name);

    FUNC1 ("data", s->type, preserve);
    FUNC0 (codefile, "}\n\n");
}