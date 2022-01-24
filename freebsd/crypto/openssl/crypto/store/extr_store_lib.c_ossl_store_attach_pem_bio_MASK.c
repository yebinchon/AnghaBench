#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UI_METHOD ;
struct TYPE_7__ {int /*<<< orphan*/ * post_process_data; int /*<<< orphan*/ * post_process; void* ui_data; int /*<<< orphan*/  const* ui_method; int /*<<< orphan*/ * loader_ctx; TYPE_1__ const* loader; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* close ) (int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  OSSL_STORE_LOADER_CTX ;
typedef  TYPE_1__ OSSL_STORE_LOADER ;
typedef  TYPE_2__ OSSL_STORE_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  OSSL_STORE_F_OSSL_STORE_ATTACH_PEM_BIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

OSSL_STORE_CTX *FUNC5(BIO *bp, const UI_METHOD *ui_method,
                                          void *ui_data)
{
    OSSL_STORE_CTX *ctx = NULL;
    const OSSL_STORE_LOADER *loader = NULL;
    OSSL_STORE_LOADER_CTX *loader_ctx = NULL;

    if ((loader = FUNC3("file")) == NULL
        || ((loader_ctx = FUNC2(bp)) == NULL))
        goto done;
    if ((ctx = FUNC0(sizeof(*ctx))) == NULL) {
        FUNC1(OSSL_STORE_F_OSSL_STORE_ATTACH_PEM_BIO,
                     ERR_R_MALLOC_FAILURE);
        goto done;
    }

    ctx->loader = loader;
    ctx->loader_ctx = loader_ctx;
    loader_ctx = NULL;
    ctx->ui_method = ui_method;
    ctx->ui_data = ui_data;
    ctx->post_process = NULL;
    ctx->post_process_data = NULL;

 done:
    if (loader_ctx != NULL)
        /*
         * We ignore a returned error because we will return NULL anyway in
         * this case, so if something goes wrong when closing, that'll simply
         * just add another entry on the error stack.
         */
        (void)loader->close(loader_ctx);
    return ctx;
}