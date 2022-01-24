#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* name; int /*<<< orphan*/  stype; int /*<<< orphan*/  gen_name; } ;
typedef  TYPE_1__ Symbol ;

/* Variables and functions */
 int /*<<< orphan*/  SUndefined ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  htab ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

Symbol *
FUNC5(char *name)
{
    Symbol key, *s;

    key.name = name;
    s = (Symbol *) FUNC3(htab, (void *) &key);
    if (s == NULL) {
	s = (Symbol *) FUNC0(sizeof(*s));
	s->name = name;
	s->gen_name = FUNC1(name);
	FUNC4(s->gen_name);
	s->stype = SUndefined;
	FUNC2(htab, s);
    }
    return s;
}