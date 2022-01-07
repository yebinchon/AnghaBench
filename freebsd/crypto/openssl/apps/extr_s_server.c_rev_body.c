
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int info; } ;
struct TYPE_3__ {TYPE_2__* user; int login; int vb; } ;
typedef int SSL ;
typedef int BIO ;


 int BIO_CLOSE ;
 int BIO_NOCLOSE ;
 scalar_t__ BIO_RR_SSL_X509_LOOKUP ;
 int BIO_do_handshake (int *) ;
 int BIO_f_buffer () ;
 int BIO_f_ebcdic_filter () ;
 int BIO_f_ssl () ;
 int BIO_flush (int *) ;
 int BIO_free_all (int *) ;
 scalar_t__ BIO_get_retry_reason (int *) ;
 int BIO_gets (int *,char*,scalar_t__) ;
 int * BIO_new (int ) ;
 int * BIO_new_socket (int,int ) ;
 int BIO_printf (scalar_t__,char*,...) ;
 int * BIO_push (int *,int *) ;
 int BIO_puts (scalar_t__,char*) ;
 int BIO_set_callback (int ,int ) ;
 int BIO_set_callback_arg (int ,char*) ;
 int BIO_set_ssl (int *,int *,int ) ;
 int BIO_set_write_buffer_size (int *,scalar_t__) ;
 scalar_t__ BIO_should_io_special (int *) ;
 int BIO_should_retry (int *) ;
 int BIO_write (int *,char*,int) ;
 int BUF_reverse (unsigned char*,int *,int) ;
 int ERR_print_errors (scalar_t__) ;
 int OPENSSL_free (char*) ;
 void* SRP_VBASE_get1_by_user (int ,int ) ;
 int SRP_user_pwd_free (TYPE_2__*) ;
 int SSL_RECEIVED_SHUTDOWN ;
 int SSL_SENT_SHUTDOWN ;
 int SSL_free (int *) ;
 int SSL_get_rbio (int *) ;
 int * SSL_new (int ) ;
 int SSL_set_accept_state (int *) ;
 int SSL_set_bio (int *,int *,int *) ;
 int SSL_set_msg_callback (int *,int ) ;
 int SSL_set_msg_callback_arg (int *,scalar_t__) ;
 int SSL_set_session_id_context (int *,unsigned char*,int ) ;
 int SSL_set_shutdown (int *,int) ;
 int SSL_set_tlsext_debug_arg (int *,scalar_t__) ;
 int SSL_set_tlsext_debug_callback (int *,int ) ;
 int SSL_trace ;
 char* app_malloc (scalar_t__,char*) ;
 int bio_dump_callback ;
 scalar_t__ bio_err ;
 scalar_t__ bio_s_msg ;
 scalar_t__ bio_s_out ;
 scalar_t__ bufsize ;
 int ctx ;
 int msg_cb ;
 int print_ssl_summary (int *) ;
 scalar_t__ s_debug ;
 int s_ign_eof ;
 int s_msg ;
 int s_quiet ;
 scalar_t__ s_tlsextdebug ;
 int sleep (int) ;
 TYPE_1__ srp_callback_parm ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int tlsext_cb ;

__attribute__((used)) static int rev_body(int s, int stype, int prot, unsigned char *context)
{
    char *buf = ((void*)0);
    int i;
    int ret = 1;
    SSL *con;
    BIO *io, *ssl_bio, *sbio;

    buf = app_malloc(bufsize, "server rev buffer");
    io = BIO_new(BIO_f_buffer());
    ssl_bio = BIO_new(BIO_f_ssl());
    if ((io == ((void*)0)) || (ssl_bio == ((void*)0)))
        goto err;


    if (!BIO_set_write_buffer_size(io, bufsize))
        goto err;

    if ((con = SSL_new(ctx)) == ((void*)0))
        goto err;

    if (s_tlsextdebug) {
        SSL_set_tlsext_debug_callback(con, tlsext_cb);
        SSL_set_tlsext_debug_arg(con, bio_s_out);
    }
    if (context != ((void*)0)
        && !SSL_set_session_id_context(con, context,
                                       strlen((char *)context))) {
        SSL_free(con);
        ERR_print_errors(bio_err);
        goto err;
    }

    sbio = BIO_new_socket(s, BIO_NOCLOSE);
    SSL_set_bio(con, sbio, sbio);
    SSL_set_accept_state(con);


    BIO_set_ssl(ssl_bio, con, BIO_CLOSE);
    BIO_push(io, ssl_bio);




    if (s_debug) {
        BIO_set_callback(SSL_get_rbio(con), bio_dump_callback);
        BIO_set_callback_arg(SSL_get_rbio(con), (char *)bio_s_out);
    }
    if (s_msg) {

        if (s_msg == 2)
            SSL_set_msg_callback(con, SSL_trace);
        else

            SSL_set_msg_callback(con, msg_cb);
        SSL_set_msg_callback_arg(con, bio_s_msg ? bio_s_msg : bio_s_out);
    }

    for (;;) {
        i = BIO_do_handshake(io);
        if (i > 0)
            break;
        if (!BIO_should_retry(io)) {
            BIO_puts(bio_err, "CONNECTION FAILURE\n");
            ERR_print_errors(bio_err);
            goto end;
        }

        if (BIO_should_io_special(io)
            && BIO_get_retry_reason(io) == BIO_RR_SSL_X509_LOOKUP) {
            BIO_printf(bio_s_out, "LOOKUP renego during accept\n");
            SRP_user_pwd_free(srp_callback_parm.user);
            srp_callback_parm.user =
                SRP_VBASE_get1_by_user(srp_callback_parm.vb,
                                       srp_callback_parm.login);
            if (srp_callback_parm.user)
                BIO_printf(bio_s_out, "LOOKUP done %s\n",
                           srp_callback_parm.user->info);
            else
                BIO_printf(bio_s_out, "LOOKUP not successful\n");
            continue;
        }

    }
    BIO_printf(bio_err, "CONNECTION ESTABLISHED\n");
    print_ssl_summary(con);

    for (;;) {
        i = BIO_gets(io, buf, bufsize - 1);
        if (i < 0) {
            if (!BIO_should_retry(io)) {
                if (!s_quiet)
                    ERR_print_errors(bio_err);
                goto err;
            } else {
                BIO_printf(bio_s_out, "read R BLOCK\n");

                if (BIO_should_io_special(io)
                    && BIO_get_retry_reason(io) == BIO_RR_SSL_X509_LOOKUP) {
                    BIO_printf(bio_s_out, "LOOKUP renego during read\n");
                    SRP_user_pwd_free(srp_callback_parm.user);
                    srp_callback_parm.user =
                        SRP_VBASE_get1_by_user(srp_callback_parm.vb,
                                               srp_callback_parm.login);
                    if (srp_callback_parm.user)
                        BIO_printf(bio_s_out, "LOOKUP done %s\n",
                                   srp_callback_parm.user->info);
                    else
                        BIO_printf(bio_s_out, "LOOKUP not successful\n");
                    continue;
                }


                sleep(1);

                continue;
            }
        } else if (i == 0) {
            ret = 1;
            BIO_printf(bio_err, "CONNECTION CLOSED\n");
            goto end;
        } else {
            char *p = buf + i - 1;
            while (i && (*p == '\n' || *p == '\r')) {
                p--;
                i--;
            }
            if (!s_ign_eof && (i == 5) && (strncmp(buf, "CLOSE", 5) == 0)) {
                ret = 1;
                BIO_printf(bio_err, "CONNECTION CLOSED\n");
                goto end;
            }
            BUF_reverse((unsigned char *)buf, ((void*)0), i);
            buf[i] = '\n';
            BIO_write(io, buf, i + 1);
            for (;;) {
                i = BIO_flush(io);
                if (i > 0)
                    break;
                if (!BIO_should_retry(io))
                    goto end;
            }
        }
    }
 end:

    SSL_set_shutdown(con, SSL_SENT_SHUTDOWN | SSL_RECEIVED_SHUTDOWN);

 err:

    OPENSSL_free(buf);
    BIO_free_all(io);
    return ret;
}
