#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int verify_result; int references; int timeout; unsigned long time; int /*<<< orphan*/ * lock; int /*<<< orphan*/  ex_data; } ;
typedef  TYPE_1__ SSL_SESSION ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_EX_INDEX_SSL_SESSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  OPENSSL_INIT_LOAD_SSL_STRINGS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  SSL_F_SSL_SESSION_NEW ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

SSL_SESSION *FUNC8(void)
{
    SSL_SESSION *ss;

    if (!FUNC4(OPENSSL_INIT_LOAD_SSL_STRINGS, NULL))
        return NULL;

    ss = FUNC5(sizeof(*ss));
    if (ss == NULL) {
        FUNC6(SSL_F_SSL_SESSION_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    ss->verify_result = 1;      /* avoid 0 (= X509_V_OK) just in case */
    ss->references = 1;
    ss->timeout = 60 * 5 + 4;   /* 5 minute timeout by default */
    ss->time = (unsigned long)FUNC7(NULL);
    ss->lock = FUNC1();
    if (ss->lock == NULL) {
        FUNC6(SSL_F_SSL_SESSION_NEW, ERR_R_MALLOC_FAILURE);
        FUNC3(ss);
        return NULL;
    }

    if (!FUNC2(CRYPTO_EX_INDEX_SSL_SESSION, ss, &ss->ex_data)) {
        FUNC0(ss->lock);
        FUNC3(ss);
        return NULL;
    }
    return ss;
}