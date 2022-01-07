
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct linger {int l_onoff; scalar_t__ l_linger; } ;
typedef int no_linger ;
struct TYPE_2__ {scalar_t__ error; } ;
typedef int SSL_CTX ;
typedef int SSL ;
typedef int BIO ;


 int BIO_SOCK_NODELAY ;
 int * BIO_new (int ) ;
 int BIO_printf (int ,char*,...) ;
 int BIO_s_connect () ;
 int BIO_set_conn_hostname (int *,char const*) ;
 int BIO_set_conn_mode (int *,int ) ;
 int ERR_print_errors (int ) ;
 int SOL_SOCKET ;
 int SO_LINGER ;
 int SSL_connect (int *) ;
 int SSL_free (int *) ;
 int SSL_get_fd (int *) ;
 int * SSL_new (int *) ;
 int SSL_set_bio (int *,int *,int *) ;
 int SSL_set_connect_state (int *) ;
 scalar_t__ X509_V_OK ;
 int X509_verify_cert_error_string (scalar_t__) ;
 int bio_err ;
 int setsockopt (int,int ,int ,char*,int) ;
 TYPE_1__ verify_args ;

__attribute__((used)) static SSL *doConnection(SSL *scon, const char *host, SSL_CTX *ctx)
{
    BIO *conn;
    SSL *serverCon;
    int i;

    if ((conn = BIO_new(BIO_s_connect())) == ((void*)0))
        return ((void*)0);

    BIO_set_conn_hostname(conn, host);
    BIO_set_conn_mode(conn, BIO_SOCK_NODELAY);

    if (scon == ((void*)0))
        serverCon = SSL_new(ctx);
    else {
        serverCon = scon;
        SSL_set_connect_state(serverCon);
    }

    SSL_set_bio(serverCon, conn, conn);


    i = SSL_connect(serverCon);
    if (i <= 0) {
        BIO_printf(bio_err, "ERROR\n");
        if (verify_args.error != X509_V_OK)
            BIO_printf(bio_err, "verify error:%s\n",
                       X509_verify_cert_error_string(verify_args.error));
        else
            ERR_print_errors(bio_err);
        if (scon == ((void*)0))
            SSL_free(serverCon);
        return ((void*)0);
    }
    return serverCon;
}
