#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__* Booleans; scalar_t__* Numbers; int /*<<< orphan*/ * Strings; } ;
typedef  TYPE_1__ TERMTYPE ;
typedef  int /*<<< orphan*/  PredIdx ;

/* Variables and functions */
 int FALSE ; 
 unsigned int FUNC0 (TYPE_1__*) ; 
 unsigned int FUNC1 (TYPE_1__*) ; 
 unsigned int FUNC2 (TYPE_1__*) ; 
 int TRUE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(TERMTYPE *t1, TERMTYPE *t2)
/* are two entries equivalent? */
{
    unsigned i;

    for (i = 0; i < FUNC0(t1); i++)
	if (t1->Booleans[i] != t2->Booleans[i])
	    return (FALSE);

    for (i = 0; i < FUNC1(t1); i++)
	if (t1->Numbers[i] != t2->Numbers[i])
	    return (FALSE);

    for (i = 0; i < FUNC2(t1); i++)
	if (FUNC3((PredIdx) i, t1->Strings[i], t2->Strings[i]))
	    return (FALSE);

    return (TRUE);
}