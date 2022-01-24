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
struct TYPE_5__ {char const* uri; } ;
struct TYPE_6__ {TYPE_1__ dir; } ;
struct TYPE_7__ {TYPE_2__ _; } ;
typedef  TYPE_3__ OSSL_STORE_LOADER_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,long) ; 
 char* FUNC1 (long) ; 
 int /*<<< orphan*/  OSSL_STORE_F_FILE_NAME_TO_URI ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(OSSL_STORE_LOADER_CTX *ctx, const char *name,
                            char **data)
{
    FUNC3(name != NULL);
    FUNC3(data != NULL);
    {
        const char *pathsep = FUNC4(ctx->_.dir.uri) ? "" : "/";
        long calculated_length = FUNC5(ctx->_.dir.uri) + FUNC5(pathsep)
            + FUNC5(name) + 1 /* \0 */;

        *data = FUNC1(calculated_length);
        if (*data == NULL) {
            FUNC2(OSSL_STORE_F_FILE_NAME_TO_URI, ERR_R_MALLOC_FAILURE);
            return 0;
        }

        FUNC0(*data, ctx->_.dir.uri, calculated_length);
        FUNC0(*data, pathsep, calculated_length);
        FUNC0(*data, name, calculated_length);
    }
    return 1;
}