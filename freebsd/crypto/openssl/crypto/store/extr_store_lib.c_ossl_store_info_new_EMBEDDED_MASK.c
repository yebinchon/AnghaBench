#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * pem_name; int /*<<< orphan*/ * blob; } ;
struct TYPE_7__ {TYPE_2__ embedded; } ;
struct TYPE_9__ {TYPE_1__ _; } ;
typedef  TYPE_3__ OSSL_STORE_INFO ;
typedef  int /*<<< orphan*/  BUF_MEM ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int /*<<< orphan*/  OSSL_STORE_F_OSSL_STORE_INFO_NEW_EMBEDDED ; 
 int /*<<< orphan*/  OSSL_STORE_INFO_EMBEDDED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

OSSL_STORE_INFO *FUNC4(const char *new_pem_name,
                                              BUF_MEM *embedded)
{
    OSSL_STORE_INFO *info = FUNC3(OSSL_STORE_INFO_EMBEDDED, NULL);

    if (info == NULL) {
        FUNC2(OSSL_STORE_F_OSSL_STORE_INFO_NEW_EMBEDDED,
                      ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    info->_.embedded.blob = embedded;
    info->_.embedded.pem_name =
        new_pem_name == NULL ? NULL : FUNC0(new_pem_name);

    if (new_pem_name != NULL && info->_.embedded.pem_name == NULL) {
        FUNC2(OSSL_STORE_F_OSSL_STORE_INFO_NEW_EMBEDDED,
                      ERR_R_MALLOC_FAILURE);
        FUNC1(info);
        info = NULL;
    }

    return info;
}