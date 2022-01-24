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
struct TYPE_3__ {int /*<<< orphan*/  type; int /*<<< orphan*/  gen_name; } ;
typedef  TYPE_1__ Symbol ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(Symbol *s)
{
    char *p = NULL;
    if (FUNC0(&p, "choice_%d", s->gen_name) < 0 || p == NULL)
	FUNC1(1, "malloc");
    FUNC2(s->type, p);
    FUNC3(p);
}