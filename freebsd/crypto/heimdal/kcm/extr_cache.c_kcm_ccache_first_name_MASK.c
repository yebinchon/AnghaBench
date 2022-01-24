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
typedef  int /*<<< orphan*/  kcm_client ;
typedef  TYPE_1__* kcm_ccache ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  session; int /*<<< orphan*/  uid; struct TYPE_3__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ccache_head ; 
 int /*<<< orphan*/  ccache_mutex ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

char *
FUNC4(kcm_client *client)
{
    kcm_ccache p;
    char *name = NULL;

    FUNC0(&ccache_mutex);

    for (p = ccache_head; p != NULL; p = p->next) {
	if (FUNC2(client, p->uid, p->session))
	    break;
    }
    if (p)
	name = FUNC3(p->name);
    FUNC1(&ccache_mutex);
    return name;
}