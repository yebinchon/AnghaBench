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
struct togglelist {char* name; char* help; } ;

/* Variables and functions */
 struct togglelist* Togglelist ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static int
FUNC1()
{
    struct togglelist *c;

    for (c = Togglelist; c->name; c++) {
	if (c->help) {
	    if (*c->help)
		FUNC0("%-15s toggle %s\r\n", c->name, c->help);
	    else
		FUNC0("\r\n");
	}
    }
    FUNC0("\r\n");
    FUNC0("%-15s %s\r\n", "?", "display help information");
    return 0;
}