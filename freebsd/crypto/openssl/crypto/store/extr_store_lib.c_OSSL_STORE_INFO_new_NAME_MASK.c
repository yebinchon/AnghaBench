#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* name; int /*<<< orphan*/ * desc; } ;
struct TYPE_7__ {TYPE_1__ name; } ;
struct TYPE_8__ {TYPE_2__ _; } ;
typedef  TYPE_3__ OSSL_STORE_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  OSSL_STORE_F_OSSL_STORE_INFO_NEW_NAME ; 
 int /*<<< orphan*/  OSSL_STORE_INFO_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

OSSL_STORE_INFO *FUNC2(char *name)
{
    OSSL_STORE_INFO *info = FUNC1(OSSL_STORE_INFO_NAME, NULL);

    if (info == NULL) {
        FUNC0(OSSL_STORE_F_OSSL_STORE_INFO_NEW_NAME,
                      ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    info->_.name.name = name;
    info->_.name.desc = NULL;

    return info;
}