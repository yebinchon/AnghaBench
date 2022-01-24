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
struct modelist {char* name; char* help; } ;

/* Variables and functions */
 struct modelist* ModeList ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static int
FUNC1(void)
{
    struct modelist *mt;

    FUNC0("format is:  'mode Mode', where 'Mode' is one of:\n\n");
    for (mt = ModeList; mt->name; mt++) {
	if (mt->help) {
	    if (*mt->help)
		FUNC0("%-15s %s\n", mt->name, mt->help);
	    else
		FUNC0("\n");
	}
    }
    return 0;
}