#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* scheme; int /*<<< orphan*/ * close; int /*<<< orphan*/ * eof; int /*<<< orphan*/ * load; int /*<<< orphan*/ * open; } ;
typedef  TYPE_1__ OSSL_STORE_LOADER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  OSSL_STORE_F_OSSL_STORE_UNREGISTER_LOADER_INT ; 
 int /*<<< orphan*/  OSSL_STORE_R_UNREGISTERED_SCHEME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_registry_init ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  loader_register ; 
 int /*<<< orphan*/  registry_init ; 
 int /*<<< orphan*/  registry_lock ; 

OSSL_STORE_LOADER *FUNC6(const char *scheme)
{
    OSSL_STORE_LOADER template;
    OSSL_STORE_LOADER *loader = NULL;

    template.scheme = scheme;
    template.open = NULL;
    template.load = NULL;
    template.eof = NULL;
    template.close = NULL;

    if (!FUNC4(&registry_init, do_registry_init)) {
        FUNC3(OSSL_STORE_F_OSSL_STORE_UNREGISTER_LOADER_INT,
                      ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    FUNC1(registry_lock);

    loader = FUNC5(loader_register, &template);

    if (loader == NULL) {
        FUNC3(OSSL_STORE_F_OSSL_STORE_UNREGISTER_LOADER_INT,
                      OSSL_STORE_R_UNREGISTERED_SCHEME);
        FUNC2(2, "scheme=", scheme);
    }

    FUNC0(registry_lock);

    return loader;
}