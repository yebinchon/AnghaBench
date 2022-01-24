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
struct TYPE_4__ {char* scheme; int /*<<< orphan*/ * close; int /*<<< orphan*/ * error; int /*<<< orphan*/ * eof; int /*<<< orphan*/ * load; int /*<<< orphan*/ * open; } ;
typedef  TYPE_1__ OSSL_STORE_LOADER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int /*<<< orphan*/  OSSL_STORE_F_OSSL_STORE_REGISTER_LOADER_INT ; 
 int /*<<< orphan*/  OSSL_STORE_R_INVALID_SCHEME ; 
 int /*<<< orphan*/  OSSL_STORE_R_LOADER_INCOMPLETE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_registry_init ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * loader_register ; 
 scalar_t__ FUNC8 (char const) ; 
 scalar_t__ FUNC9 (char const) ; 
 int /*<<< orphan*/  registry_init ; 
 int /*<<< orphan*/  registry_lock ; 
 int /*<<< orphan*/  store_loader_cmp ; 
 int /*<<< orphan*/  store_loader_hash ; 
 int /*<<< orphan*/ * FUNC10 (char*,char const) ; 

int FUNC11(OSSL_STORE_LOADER *loader)
{
    const char *scheme = loader->scheme;
    int ok = 0;

    /*
     * Check that the given scheme conforms to correct scheme syntax as per
     * RFC 3986:
     *
     * scheme        = ALPHA *( ALPHA / DIGIT / "+" / "-" / "." )
     */
    if (FUNC8(*scheme))
        while (*scheme != '\0'
               && (FUNC8(*scheme)
                   || FUNC9(*scheme)
                   || FUNC10("+-.", *scheme) != NULL))
            scheme++;
    if (*scheme != '\0') {
        FUNC3(OSSL_STORE_F_OSSL_STORE_REGISTER_LOADER_INT,
                      OSSL_STORE_R_INVALID_SCHEME);
        FUNC2(2, "scheme=", loader->scheme);
        return 0;
    }

    /* Check that functions we absolutely require are present */
    if (loader->open == NULL || loader->load == NULL || loader->eof == NULL
        || loader->error == NULL || loader->close == NULL) {
        FUNC3(OSSL_STORE_F_OSSL_STORE_REGISTER_LOADER_INT,
                      OSSL_STORE_R_LOADER_INCOMPLETE);
        return 0;
    }

    if (!FUNC4(&registry_init, do_registry_init)) {
        FUNC3(OSSL_STORE_F_OSSL_STORE_REGISTER_LOADER_INT,
                      ERR_R_MALLOC_FAILURE);
        return 0;
    }
    FUNC1(registry_lock);

    if (loader_register == NULL) {
        loader_register = FUNC7(store_loader_hash,
                                                   store_loader_cmp);
    }

    if (loader_register != NULL
        && (FUNC6(loader_register, loader) != NULL
            || FUNC5(loader_register) == 0))
        ok = 1;

    FUNC0(registry_lock);

    return ok;
}