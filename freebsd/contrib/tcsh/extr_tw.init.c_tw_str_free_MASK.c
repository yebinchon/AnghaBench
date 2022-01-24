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
struct TYPE_3__ {scalar_t__ nbuff; scalar_t__ tbuff; int /*<<< orphan*/ * buff; scalar_t__ nlist; scalar_t__ tlist; int /*<<< orphan*/ * list; } ;
typedef  TYPE_1__ stringlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pintr_disabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(stringlist_t *sl)
{
    pintr_disabled++;
    if (sl->list) {
	FUNC1(sl->list);
	sl->list = NULL;
	sl->tlist = sl->nlist = 0;
    }
    if (sl->buff) {
	FUNC1(sl->buff);
	sl->buff = NULL;
	sl->tbuff = sl->nbuff = 0;
    }
    FUNC0(&pintr_disabled);
}