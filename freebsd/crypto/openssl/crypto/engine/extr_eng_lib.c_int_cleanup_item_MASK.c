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
struct TYPE_4__ {int /*<<< orphan*/ * cb; } ;
typedef  TYPE_1__ ENGINE_CLEANUP_ITEM ;
typedef  int /*<<< orphan*/  ENGINE_CLEANUP_CB ;

/* Variables and functions */
 int /*<<< orphan*/  ENGINE_F_INT_CLEANUP_ITEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 TYPE_1__* FUNC1 (int) ; 

__attribute__((used)) static ENGINE_CLEANUP_ITEM *FUNC2(ENGINE_CLEANUP_CB *cb)
{
    ENGINE_CLEANUP_ITEM *item;

    if ((item = FUNC1(sizeof(*item))) == NULL) {
        FUNC0(ENGINE_F_INT_CLEANUP_ITEM, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    item->cb = cb;
    return item;
}