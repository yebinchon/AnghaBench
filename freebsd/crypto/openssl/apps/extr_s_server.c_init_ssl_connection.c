
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int info; } ;
struct TYPE_4__ {TYPE_2__* user; int login; int vb; } ;
typedef int SSL ;
typedef int BIO_ADDR ;
typedef int BIO ;


 int BIO_ADDR_free (int *) ;
 int * BIO_ADDR_new () ;
 scalar_t__ BIO_connect (int,int *,int ) ;
 int BIO_ctrl_set_connected (int *,int *) ;
 int BIO_get_fd (int *,int*) ;
 int BIO_printf (int ,char*,...) ;
 int DTLSv1_listen (int *,int *) ;
 int ERR_print_errors (int ) ;
 TYPE_2__* SRP_VBASE_get1_by_user (int ,int ) ;
 int SRP_user_pwd_free (TYPE_2__*) ;
 scalar_t__ SSL_ERROR_WANT_X509_LOOKUP ;
 int SSL_accept (int *) ;
 scalar_t__ SSL_get_error (int *,int) ;
 scalar_t__ SSL_get_state (int *) ;
 long SSL_get_verify_result (int *) ;
 int * SSL_get_wbio (int *) ;
 int SSL_stateless (int *) ;
 scalar_t__ SSL_waiting_for_async (int *) ;
 scalar_t__ TLS_ST_SR_CLNT_HELLO ;
 long X509_V_OK ;
 int X509_verify_cert_error_string (long) ;
 int bio_err ;
 int bio_s_out ;
 scalar_t__ dtlslisten ;
 int is_retryable (int *,int) ;
 int print_connection_info (int *) ;
 TYPE_1__ srp_callback_parm ;
 scalar_t__ stateless ;

__attribute__((used)) static int init_ssl_connection(SSL *con)
{
    int i;
    long verify_err;
    int retry = 0;

    if (dtlslisten || stateless) {
        BIO_ADDR *client = ((void*)0);

        if (dtlslisten) {
            if ((client = BIO_ADDR_new()) == ((void*)0)) {
                BIO_printf(bio_err, "ERROR - memory\n");
                return 0;
            }
            i = DTLSv1_listen(con, client);
        } else {
            i = SSL_stateless(con);
        }
        if (i > 0) {
            BIO *wbio;
            int fd = -1;

            if (dtlslisten) {
                wbio = SSL_get_wbio(con);
                if (wbio) {
                    BIO_get_fd(wbio, &fd);
                }

                if (!wbio || BIO_connect(fd, client, 0) == 0) {
                    BIO_printf(bio_err, "ERROR - unable to connect\n");
                    BIO_ADDR_free(client);
                    return 0;
                }

                (void)BIO_ctrl_set_connected(wbio, client);
                BIO_ADDR_free(client);
                dtlslisten = 0;
            } else {
                stateless = 0;
            }
            i = SSL_accept(con);
        } else {
            BIO_ADDR_free(client);
        }
    } else {
        do {
            i = SSL_accept(con);

            if (i <= 0)
                retry = is_retryable(con, i);
            while (i <= 0
                   && SSL_get_error(con, i) == SSL_ERROR_WANT_X509_LOOKUP) {
                BIO_printf(bio_s_out, "LOOKUP during accept %s\n",
                           srp_callback_parm.login);
                SRP_user_pwd_free(srp_callback_parm.user);
                srp_callback_parm.user =
                    SRP_VBASE_get1_by_user(srp_callback_parm.vb,
                                           srp_callback_parm.login);
                if (srp_callback_parm.user)
                    BIO_printf(bio_s_out, "LOOKUP done %s\n",
                               srp_callback_parm.user->info);
                else
                    BIO_printf(bio_s_out, "LOOKUP not successful\n");
                i = SSL_accept(con);
                if (i <= 0)
                    retry = is_retryable(con, i);
            }

        } while (i < 0 && SSL_waiting_for_async(con));
    }

    if (i <= 0) {
        if (((dtlslisten || stateless) && i == 0)
                || (!dtlslisten && !stateless && retry)) {
            BIO_printf(bio_s_out, "DELAY\n");
            return 1;
        }

        BIO_printf(bio_err, "ERROR\n");

        verify_err = SSL_get_verify_result(con);
        if (verify_err != X509_V_OK) {
            BIO_printf(bio_err, "verify error:%s\n",
                       X509_verify_cert_error_string(verify_err));
        }

        ERR_print_errors(bio_err);
        return 0;
    }

    print_connection_info(con);
    return 1;
}
