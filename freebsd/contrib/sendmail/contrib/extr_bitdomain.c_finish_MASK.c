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
struct entry {int /*<<< orphan*/  node; int /*<<< orphan*/  domain; struct entry* next; } ;

/* Variables and functions */
 struct entry* firstentry ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char) ; 

FUNC3()
{
    struct entry *p;
    char *domain;

    for (p = firstentry; p; p = p->next) {
	if (!FUNC2(p->domain, '.') && (domain = FUNC0(p->domain))) {
	    FUNC1(p->node, domain);
	}
    }
}