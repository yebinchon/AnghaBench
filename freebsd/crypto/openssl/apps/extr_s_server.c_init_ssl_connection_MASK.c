#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  info; } ;
struct TYPE_4__ {TYPE_2__* user; int /*<<< orphan*/  login; int /*<<< orphan*/  vb; } ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO_ADDR ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ SSL_ERROR_WANT_X509_LOOKUP ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 long FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ TLS_ST_SR_CLNT_HELLO ; 
 long X509_V_OK ; 
 int /*<<< orphan*/  FUNC17 (long) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  bio_s_out ; 
 scalar_t__ dtlslisten ; 
 int FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 TYPE_1__ srp_callback_parm ; 
 scalar_t__ stateless ; 

__attribute__((used)) static int FUNC20(SSL *con)
{
    int i;
    long verify_err;
    int retry = 0;

    if (dtlslisten || stateless) {
        BIO_ADDR *client = NULL;

        if (dtlslisten) {
            if ((client = FUNC1()) == NULL) {
                FUNC5(bio_err, "ERROR - memory\n");
                return 0;
            }
            i = FUNC6(con, client);
        } else {
            i = FUNC15(con);
        }
        if (i > 0) {
            BIO *wbio;
            int fd = -1;

            if (dtlslisten) {
                wbio = FUNC14(con);
                if (wbio) {
                    FUNC4(wbio, &fd);
                }

                if (!wbio || FUNC2(fd, client, 0) == 0) {
                    FUNC5(bio_err, "ERROR - unable to connect\n");
                    FUNC0(client);
                    return 0;
                }

                (void)FUNC3(wbio, client);
                FUNC0(client);
                dtlslisten = 0;
            } else {
                stateless = 0;
            }
            i = FUNC10(con);
        } else {
            FUNC0(client);
        }
    } else {
        do {
            i = FUNC10(con);

            if (i <= 0)
                retry = FUNC18(con, i);
#ifdef CERT_CB_TEST_RETRY
            {
                while (i <= 0
                        && SSL_get_error(con, i) == SSL_ERROR_WANT_X509_LOOKUP
                        && SSL_get_state(con) == TLS_ST_SR_CLNT_HELLO) {
                    BIO_printf(bio_err,
                               "LOOKUP from certificate callback during accept\n");
                    i = SSL_accept(con);
                    if (i <= 0)
                        retry = is_retryable(con, i);
                }
            }
#endif

#ifndef OPENSSL_NO_SRP
            while (i <= 0
                   && FUNC11(con, i) == SSL_ERROR_WANT_X509_LOOKUP) {
                FUNC5(bio_s_out, "LOOKUP during accept %s\n",
                           srp_callback_parm.login);
                FUNC9(srp_callback_parm.user);
                srp_callback_parm.user =
                    FUNC8(srp_callback_parm.vb,
                                           srp_callback_parm.login);
                if (srp_callback_parm.user)
                    FUNC5(bio_s_out, "LOOKUP done %s\n",
                               srp_callback_parm.user->info);
                else
                    FUNC5(bio_s_out, "LOOKUP not successful\n");
                i = FUNC10(con);
                if (i <= 0)
                    retry = FUNC18(con, i);
            }
#endif
        } while (i < 0 && FUNC16(con));
    }

    if (i <= 0) {
        if (((dtlslisten || stateless) && i == 0)
                || (!dtlslisten && !stateless && retry)) {
            FUNC5(bio_s_out, "DELAY\n");
            return 1;
        }

        FUNC5(bio_err, "ERROR\n");

        verify_err = FUNC13(con);
        if (verify_err != X509_V_OK) {
            FUNC5(bio_err, "verify error:%s\n",
                       FUNC17(verify_err));
        }
        /* Always print any error messages */
        FUNC7(bio_err);
        return 0;
    }

    FUNC19(con);
    return 1;
}