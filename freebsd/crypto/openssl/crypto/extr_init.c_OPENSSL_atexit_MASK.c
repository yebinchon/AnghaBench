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
struct TYPE_4__ {void (* handler ) () ;struct TYPE_4__* next; } ;
typedef  TYPE_1__ OPENSSL_INIT_STOP ;
typedef  int /*<<< orphan*/ * HMODULE ;
typedef  int /*<<< orphan*/  DSO ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_F_OPENSSL_ATEXIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSO_FLAG_NO_UNLOAD_ON_FREE ; 
 int /*<<< orphan*/ * FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS ; 
 int GET_MODULE_HANDLE_EX_FLAG_PIN ; 
 int /*<<< orphan*/  FUNC5 (int,void*,int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_1__* stop_handlers ; 

int FUNC8(void (*handler)(void))
{
    OPENSSL_INIT_STOP *newhand;

#if !defined(OPENSSL_USE_NODELETE)\
    && !defined(OPENSSL_NO_PINSHARED)
    {
        union {
            void *sym;
            void (*func)(void);
        } handlersym;

        handlersym.func = handler;
# if defined(DSO_WIN32) && !defined(_WIN32_WCE)
        {
            HMODULE handle = NULL;
            BOOL ret;

            /*
             * We don't use the DSO route for WIN32 because there is a better
             * way
             */
            ret = GetModuleHandleEx(GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS
                                    | GET_MODULE_HANDLE_EX_FLAG_PIN,
                                    handlersym.sym, &handle);

            if (!ret)
                return 0;
        }
# elif !defined(DSO_NONE)
        /*
         * Deliberately leak a reference to the handler. This will force the
         * library/code containing the handler to remain loaded until we run the
         * atexit handler. If -znodelete has been used then this is
         * unnecessary.
         */
        {
            DSO *dso = NULL;

            FUNC4();
            dso = FUNC1(handlersym.sym, DSO_FLAG_NO_UNLOAD_ON_FREE);
#  ifdef OPENSSL_INIT_DEBUG
            fprintf(stderr,
                    "OPENSSL_INIT: OPENSSL_atexit: obtained DSO reference? %s\n",
                    (dso == NULL ? "No!" : "Yes."));
            /* See same code above in ossl_init_base() for an explanation. */
#  endif
            FUNC2(dso);
            FUNC3();
        }
# endif
    }
#endif

    if ((newhand = FUNC6(sizeof(*newhand))) == NULL) {
        FUNC0(CRYPTO_F_OPENSSL_ATEXIT, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    newhand->handler = handler;
    newhand->next = stop_handlers;
    stop_handlers = newhand;

    return 1;
}