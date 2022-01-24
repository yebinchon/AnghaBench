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
struct TYPE_4__ {scalar_t__ references; struct TYPE_4__* next; } ;
typedef  TYPE_1__ APP_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  appinfokey ; 
 int /*<<< orphan*/  do_memdbg_init ; 
 int /*<<< orphan*/  memdbg_init ; 

__attribute__((used)) static int FUNC4(void)
{
    APP_INFO *current = NULL;

    if (!FUNC3(&memdbg_init, do_memdbg_init))
        return 0;

    current = (APP_INFO *)FUNC0(&appinfokey);
    if (current != NULL) {
        APP_INFO *next = current->next;

        if (next != NULL) {
            next->references++;
            FUNC1(&appinfokey, next);
        } else {
            FUNC1(&appinfokey, NULL);
        }
        if (--(current->references) <= 0) {
            current->next = NULL;
            if (next != NULL)
                next->references--;
            FUNC2(current);
        }
        return 1;
    }
    return 0;
}