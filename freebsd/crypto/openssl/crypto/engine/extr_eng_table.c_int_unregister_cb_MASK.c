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
struct TYPE_3__ {int /*<<< orphan*/ * funct; scalar_t__ uptodate; int /*<<< orphan*/  sk; } ;
typedef  TYPE_1__ ENGINE_PILE ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(ENGINE_PILE *pile, ENGINE *e)
{
    int n;
    /* Iterate the 'c->sk' stack removing any occurrence of 'e' */
    while ((n = FUNC2(pile->sk, e)) >= 0) {
        (void)FUNC1(pile->sk, n);
        pile->uptodate = 0;
    }
    if (pile->funct == e) {
        FUNC0(e, 0);
        pile->funct = NULL;
    }
}