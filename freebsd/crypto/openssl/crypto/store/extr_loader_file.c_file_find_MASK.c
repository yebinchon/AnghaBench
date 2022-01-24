#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  search_name; } ;
struct TYPE_6__ {TYPE_1__ dir; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ _; } ;
typedef  int /*<<< orphan*/  OSSL_STORE_SEARCH ;
typedef  TYPE_3__ OSSL_STORE_LOADER_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,unsigned long) ; 
 int /*<<< orphan*/  OSSL_STORE_F_FILE_FIND ; 
 int /*<<< orphan*/  OSSL_STORE_R_SEARCH_ONLY_SUPPORTED_FOR_DIRECTORIES ; 
 int /*<<< orphan*/  OSSL_STORE_R_UNSUPPORTED_SEARCH_TYPE ; 
 scalar_t__ OSSL_STORE_SEARCH_BY_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ is_dir ; 

__attribute__((used)) static int FUNC5(OSSL_STORE_LOADER_CTX *ctx, OSSL_STORE_SEARCH *search)
{
    /*
     * If ctx == NULL, the library is looking to know if this loader supports
     * the given search type.
     */

    if (FUNC2(search) == OSSL_STORE_SEARCH_BY_NAME) {
        unsigned long hash = 0;

        if (ctx == NULL)
            return 1;

        if (ctx->type != is_dir) {
            FUNC3(OSSL_STORE_F_FILE_FIND,
                          OSSL_STORE_R_SEARCH_ONLY_SUPPORTED_FOR_DIRECTORIES);
            return 0;
        }

        hash = FUNC4(FUNC1(search));
        FUNC0(ctx->_.dir.search_name, sizeof(ctx->_.dir.search_name),
                     "%08lx", hash);
        return 1;
    }

    if (ctx != NULL)
        FUNC3(OSSL_STORE_F_FILE_FIND,
                      OSSL_STORE_R_UNSUPPORTED_SEARCH_TYPE);
    return 0;
}