#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * Strings; scalar_t__* Numbers; scalar_t__* Booleans; int /*<<< orphan*/  term_names; } ;
typedef  TYPE_1__ TERMTYPE ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 unsigned int FUNC1 (TYPE_1__*) ; 
 unsigned int FUNC2 (TYPE_1__*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long
FUNC4(TERMTYPE *tp)
{
    unsigned long result = FUNC3(tp->term_names);
    unsigned i;

    for (i = 0; i < FUNC0(tp); i++) {
	result += (unsigned long) (tp->Booleans[i]);
    }
    for (i = 0; i < FUNC1(tp); i++) {
	result += (unsigned long) (tp->Numbers[i]);
    }
    for (i = 0; i < FUNC2(tp); i++) {
	result += FUNC3(tp->Strings[i]);
    }
    return result;
}