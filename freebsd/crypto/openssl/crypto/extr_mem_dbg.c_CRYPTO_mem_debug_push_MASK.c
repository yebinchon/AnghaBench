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
struct TYPE_4__ {char const* file; int line; char const* info; int references; struct TYPE_4__* next; int /*<<< orphan*/  threadid; } ;
typedef  TYPE_1__ APP_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_MEM_CHECK_DISABLE ; 
 int /*<<< orphan*/  CRYPTO_MEM_CHECK_ENABLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  appinfokey ; 
 int /*<<< orphan*/  do_memdbg_init ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  memdbg_init ; 

int FUNC7(const char *info, const char *file, int line)
{
    APP_INFO *ami, *amim;
    int ret = 0;

    if (FUNC6()) {
        FUNC3(CRYPTO_MEM_CHECK_DISABLE);

        if (!FUNC5(&memdbg_init, do_memdbg_init)
            || (ami = FUNC4(sizeof(*ami))) == NULL)
            goto err;

        ami->threadid = FUNC0();
        ami->file = file;
        ami->line = line;
        ami->info = info;
        ami->references = 1;
        ami->next = NULL;

        amim = (APP_INFO *)FUNC1(&appinfokey);
        FUNC2(&appinfokey, ami);

        if (amim != NULL)
            ami->next = amim;
        ret = 1;
 err:
        FUNC3(CRYPTO_MEM_CHECK_ENABLE);
    }

    return ret;
}