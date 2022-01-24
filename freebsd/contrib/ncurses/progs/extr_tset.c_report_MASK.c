#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int* c_cc; } ;
struct TYPE_3__ {unsigned int* c_cc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* key_backspace ; 
 TYPE_2__ mode ; 
 TYPE_1__ oldmode ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3(const char *name, int which, unsigned def)
{
    unsigned older, newer;
    char *p;

    newer = mode.c_cc[which];
    older = oldmode.c_cc[which];

    if (older == newer && older == def)
	return;

    (void) FUNC2(stderr, "%s %s ", name, older == newer ? "is" : "set to");

    if (FUNC0(newer))
	(void) FUNC2(stderr, "undef.\n");
    /*
     * Check 'delete' before 'backspace', since the key_backspace value
     * is ambiguous.
     */
    else if (newer == 0177)
	(void) FUNC2(stderr, "delete.\n");
    else if ((p = key_backspace) != 0
	     && newer == (unsigned char) p[0]
	     && p[1] == '\0')
	(void) FUNC2(stderr, "backspace.\n");
    else if (newer < 040) {
	newer ^= 0100;
	(void) FUNC2(stderr, "control-%c (^%c).\n", FUNC1(newer), FUNC1(newer));
    } else
	(void) FUNC2(stderr, "%c.\n", FUNC1(newer));
}