#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_BIND_REUSEADDR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static BIO *FUNC11(const char *port)
{
# ifdef OPENSSL_NO_SOCK
    BIO_printf(bio_err,
               "Error setting up accept BIO - sockets not supported.\n");
    return NULL;
# else
    BIO *acbio = NULL, *bufbio = NULL;

    bufbio = FUNC4(FUNC1());
    if (bufbio == NULL)
        goto err;
    acbio = FUNC4(FUNC6());
    if (acbio == NULL
        || FUNC9(acbio, BIO_BIND_REUSEADDR) < 0
        || FUNC8(acbio, port) < 0) {
        FUNC10(LOG_ERR, "Error setting up accept BIO");
        goto err;
    }

    FUNC7(acbio, bufbio);
    bufbio = NULL;
    if (FUNC0(acbio) <= 0) {
        FUNC10(LOG_ERR, "Error starting accept");
        goto err;
    }

    return acbio;

 err:
    FUNC3(acbio);
    FUNC2(bufbio);
    return NULL;
# endif
}