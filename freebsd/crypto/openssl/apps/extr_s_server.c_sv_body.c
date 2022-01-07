
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;
struct TYPE_4__ {int info; } ;
struct TYPE_3__ {TYPE_2__* user; int login; int vb; } ;
typedef int SSL ;
typedef int BIO ;


 int BIO_CTRL_DGRAM_MTU_DISCOVER ;
 int BIO_CTRL_DGRAM_SET_RECV_TIMEOUT ;
 int BIO_CTRL_DGRAM_SET_SEND_TIMEOUT ;
 int BIO_NOCLOSE ;
 int BIO_closesocket (int) ;
 int BIO_ctrl (int *,int ,int ,struct timeval*) ;
 int BIO_f_nbio_test () ;
 int BIO_flush (scalar_t__) ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int * BIO_new_dgram (int,int ) ;
 int * BIO_new_dgram_sctp (int,int ) ;
 int * BIO_new_socket (int,int ) ;
 int BIO_printf (scalar_t__,char*,...) ;
 int * BIO_push (int *,int *) ;
 int BIO_set_callback (int ,int ) ;
 int BIO_set_callback_arg (int ,char*) ;
 int BIO_socket_nbio (int,int) ;
 int BIO_write (int ,char const*,int ) ;
 scalar_t__ DGRAM_RCV_TIMEOUT ;
 scalar_t__ DGRAM_SND_TIMEOUT ;
 scalar_t__ DTLS1_VERSION ;
 scalar_t__ DTLS_get_link_min_mtu (int *) ;
 int DTLS_set_link_mtu (int *,scalar_t__) ;
 scalar_t__ DTLSv1_get_timeout (int *,struct timeval*) ;
 scalar_t__ DTLSv1_handle_timeout (int *) ;
 int ERR_print_errors (scalar_t__) ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_ZERO (int *) ;
 int IPPROTO_SCTP ;
 int OPENSSL_clear_free (char*,int) ;
 int SOCK_DGRAM ;
 void* SRP_VBASE_get1_by_user (int ,int ) ;
 int SRP_user_pwd_free (TYPE_2__*) ;
 scalar_t__ SSL_EARLY_DATA_NOT_SENT ;
 int SSL_KEY_UPDATE_NOT_REQUESTED ;
 int SSL_KEY_UPDATE_REQUESTED ;
 int SSL_OP_COOKIE_EXCHANGE ;
 int SSL_OP_NO_QUERY_MTU ;
 int SSL_READ_EARLY_DATA_ERROR ;
 int SSL_READ_EARLY_DATA_FINISH ;
 int SSL_RECEIVED_SHUTDOWN ;
 int SSL_SENT_SHUTDOWN ;
 int SSL_VERIFY_CLIENT_ONCE ;
 int SSL_VERIFY_PEER ;
 int SSL_clear (int *) ;
 int SSL_do_handshake (int *) ;
 int SSL_free (int *) ;
 int SSL_get_SSL_CTX (int *) ;
 scalar_t__ SSL_get_early_data_status (int *) ;
 int SSL_get_error (int *,int) ;
 int SSL_get_rbio (int *) ;
 int SSL_get_wbio (int *) ;
 scalar_t__ SSL_has_pending (int *) ;
 int SSL_heartbeat (int *) ;
 scalar_t__ SSL_is_dtls (int *) ;
 scalar_t__ SSL_is_init_finished (int *) ;
 int SSL_key_update (int *,int ) ;
 int * SSL_new (int ) ;
 int SSL_read (int *,char*,int) ;
 int SSL_read_early_data (int *,char*,int,size_t*) ;
 int SSL_renegotiate (int *) ;
 int SSL_set_accept_state (int *) ;
 int SSL_set_bio (int *,int *,int *) ;
 int SSL_set_msg_callback (int *,int ) ;
 int SSL_set_msg_callback_arg (int *,scalar_t__) ;
 int SSL_set_options (int *,int ) ;
 int SSL_set_session_id_context (int *,unsigned char*,int ) ;
 int SSL_set_shutdown (int *,int) ;
 int SSL_set_tlsext_debug_arg (int *,scalar_t__) ;
 int SSL_set_tlsext_debug_callback (int *,int ) ;
 int SSL_set_verify (int *,int,int *) ;
 int SSL_trace ;
 int SSL_verify_client_post_handshake (int *) ;
 scalar_t__ SSL_version (int *) ;
 scalar_t__ SSL_waiting_for_async (int *) ;
 int SSL_write (int *,char*,unsigned int) ;
 char* app_malloc (int,char*) ;
 int ascii2ebcdic (char*,char*,int) ;
 int assert (int) ;
 scalar_t__ async ;
 int bio_dump_callback ;
 scalar_t__ bio_err ;
 scalar_t__ bio_s_msg ;
 scalar_t__ bio_s_out ;
 int bufsize ;
 int close_accept_socket () ;
 int count ;
 int ctx ;
 scalar_t__ early_data ;
 int ebcdic2ascii (char*,char*,int) ;
 scalar_t__ enable_timeouts ;
 int fileno_stdin () ;
 scalar_t__ has_stdin_waiting () ;
 int init_ssl_connection (int *) ;
 int msg_cb ;
 int openssl_fdset (int,int *) ;
 int print_connection_info (int *) ;
 int print_stats (scalar_t__,int ) ;
 int printf (char*,...) ;
 int raw_read_stdin (char*,int) ;
 int raw_write_stdout (char*,unsigned int) ;
 int s_brief ;
 scalar_t__ s_crlf ;
 scalar_t__ s_debug ;
 int s_msg ;
 scalar_t__ s_nbio ;
 scalar_t__ s_nbio_test ;
 int s_quiet ;
 scalar_t__ s_tlsextdebug ;
 int select (int,void*,int *,int *,struct timeval*) ;
 scalar_t__ socket_mtu ;
 TYPE_1__ srp_callback_parm ;
 int strlen (char const*) ;
 int tlsext_cb ;
 int wait_for_async (int *) ;

__attribute__((used)) static int sv_body(int s, int stype, int prot, unsigned char *context)
{
    char *buf = ((void*)0);
    fd_set readfds;
    int ret = 1, width;
    int k, i;
    unsigned long l;
    SSL *con = ((void*)0);
    BIO *sbio;
    struct timeval timeout;

    struct timeval *timeoutp;



    int isdtls = (stype == SOCK_DGRAM || prot == IPPROTO_SCTP);





    buf = app_malloc(bufsize, "server buffer");
    if (s_nbio) {
        if (!BIO_socket_nbio(s, 1))
            ERR_print_errors(bio_err);
        else if (!s_quiet)
            BIO_printf(bio_err, "Turned on non blocking io\n");
    }

    con = SSL_new(ctx);
    if (con == ((void*)0)) {
        ret = -1;
        goto err;
    }

    if (s_tlsextdebug) {
        SSL_set_tlsext_debug_callback(con, tlsext_cb);
        SSL_set_tlsext_debug_arg(con, bio_s_out);
    }

    if (context != ((void*)0)
        && !SSL_set_session_id_context(con, context,
                                       strlen((char *)context))) {
        BIO_printf(bio_err, "Error setting session id context\n");
        ret = -1;
        goto err;
    }

    if (!SSL_clear(con)) {
        BIO_printf(bio_err, "Error clearing SSL connection\n");
        ret = -1;
        goto err;
    }

    if (isdtls) {

        if (prot == IPPROTO_SCTP)
            sbio = BIO_new_dgram_sctp(s, BIO_NOCLOSE);
        else

            sbio = BIO_new_dgram(s, BIO_NOCLOSE);

        if (enable_timeouts) {
            timeout.tv_sec = 0;
            timeout.tv_usec = DGRAM_RCV_TIMEOUT;
            BIO_ctrl(sbio, BIO_CTRL_DGRAM_SET_RECV_TIMEOUT, 0, &timeout);

            timeout.tv_sec = 0;
            timeout.tv_usec = DGRAM_SND_TIMEOUT;
            BIO_ctrl(sbio, BIO_CTRL_DGRAM_SET_SEND_TIMEOUT, 0, &timeout);
        }

        if (socket_mtu) {
            if (socket_mtu < DTLS_get_link_min_mtu(con)) {
                BIO_printf(bio_err, "MTU too small. Must be at least %ld\n",
                           DTLS_get_link_min_mtu(con));
                ret = -1;
                BIO_free(sbio);
                goto err;
            }
            SSL_set_options(con, SSL_OP_NO_QUERY_MTU);
            if (!DTLS_set_link_mtu(con, socket_mtu)) {
                BIO_printf(bio_err, "Failed to set MTU\n");
                ret = -1;
                BIO_free(sbio);
                goto err;
            }
        } else

            BIO_ctrl(sbio, BIO_CTRL_DGRAM_MTU_DISCOVER, 0, ((void*)0));


        if (prot != IPPROTO_SCTP)


            SSL_set_options(con, SSL_OP_COOKIE_EXCHANGE);
    } else

        sbio = BIO_new_socket(s, BIO_NOCLOSE);

    if (sbio == ((void*)0)) {
        BIO_printf(bio_err, "Unable to create BIO\n");
        ERR_print_errors(bio_err);
        goto err;
    }

    if (s_nbio_test) {
        BIO *test;

        test = BIO_new(BIO_f_nbio_test());
        sbio = BIO_push(test, sbio);
    }

    SSL_set_bio(con, sbio, sbio);
    SSL_set_accept_state(con);


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

    if (s_tlsextdebug) {
        SSL_set_tlsext_debug_callback(con, tlsext_cb);
        SSL_set_tlsext_debug_arg(con, bio_s_out);
    }

    if (early_data) {
        int write_header = 1, edret = SSL_READ_EARLY_DATA_ERROR;
        size_t readbytes;

        while (edret != SSL_READ_EARLY_DATA_FINISH) {
            for (;;) {
                edret = SSL_read_early_data(con, buf, bufsize, &readbytes);
                if (edret != SSL_READ_EARLY_DATA_ERROR)
                    break;

                switch (SSL_get_error(con, 0)) {
                case 130:
                case 133:
                case 131:

                    continue;
                default:
                    BIO_printf(bio_err, "Error reading early data\n");
                    ERR_print_errors(bio_err);
                    goto err;
                }
            }
            if (readbytes > 0) {
                if (write_header) {
                    BIO_printf(bio_s_out, "Early data received:\n");
                    write_header = 0;
                }
                raw_write_stdout(buf, (unsigned int)readbytes);
                (void)BIO_flush(bio_s_out);
            }
        }
        if (write_header) {
            if (SSL_get_early_data_status(con) == SSL_EARLY_DATA_NOT_SENT)
                BIO_printf(bio_s_out, "No early data received\n");
            else
                BIO_printf(bio_s_out, "Early data was rejected\n");
        } else {
            BIO_printf(bio_s_out, "\nEnd of early data\n");
        }
        if (SSL_is_init_finished(con))
            print_connection_info(con);
    }

    if (fileno_stdin() > s)
        width = fileno_stdin() + 1;
    else
        width = s + 1;
    for (;;) {
        int read_from_terminal;
        int read_from_sslcon;

        read_from_terminal = 0;
        read_from_sslcon = SSL_has_pending(con)
                           || (async && SSL_waiting_for_async(con));

        if (!read_from_sslcon) {
            FD_ZERO(&readfds);

            openssl_fdset(fileno_stdin(), &readfds);

            openssl_fdset(s, &readfds);
            if (SSL_is_dtls(con) && DTLSv1_get_timeout(con, &timeout))
                timeoutp = &timeout;
            else
                timeoutp = ((void*)0);

            i = select(width, (void *)&readfds, ((void*)0), ((void*)0), timeoutp);

            if ((SSL_is_dtls(con)) && DTLSv1_handle_timeout(con) > 0)
                BIO_printf(bio_err, "TIMEOUT occurred\n");

            if (i <= 0)
                continue;
            if (FD_ISSET(fileno_stdin(), &readfds))
                read_from_terminal = 1;

            if (FD_ISSET(s, &readfds))
                read_from_sslcon = 1;
        }
        if (read_from_terminal) {
            if (s_crlf) {
                int j, lf_num;

                i = raw_read_stdin(buf, bufsize / 2);
                lf_num = 0;

                for (j = 0; j < i; j++)
                    if (buf[j] == '\n')
                        lf_num++;
                for (j = i - 1; j >= 0; j--) {
                    buf[j + lf_num] = buf[j];
                    if (buf[j] == '\n') {
                        lf_num--;
                        i++;
                        buf[j + lf_num] = '\r';
                    }
                }
                assert(lf_num == 0);
            } else {
                i = raw_read_stdin(buf, bufsize);
            }

            if (!s_quiet && !s_brief) {
                if ((i <= 0) || (buf[0] == 'Q')) {
                    BIO_printf(bio_s_out, "DONE\n");
                    (void)BIO_flush(bio_s_out);
                    BIO_closesocket(s);
                    close_accept_socket();
                    ret = -11;
                    goto err;
                }
                if ((i <= 0) || (buf[0] == 'q')) {
                    BIO_printf(bio_s_out, "DONE\n");
                    (void)BIO_flush(bio_s_out);
                    if (SSL_version(con) != DTLS1_VERSION)
                        BIO_closesocket(s);



                    goto err;
                }

                if ((buf[0] == 'B') && ((buf[1] == '\n') || (buf[1] == '\r'))) {
                    BIO_printf(bio_err, "HEARTBEATING\n");
                    SSL_heartbeat(con);
                    i = 0;
                    continue;
                }

                if ((buf[0] == 'r') && ((buf[1] == '\n') || (buf[1] == '\r'))) {
                    SSL_renegotiate(con);
                    i = SSL_do_handshake(con);
                    printf("SSL_do_handshake -> %d\n", i);
                    i = 0;
                    continue;
                }
                if ((buf[0] == 'R') && ((buf[1] == '\n') || (buf[1] == '\r'))) {
                    SSL_set_verify(con,
                                   SSL_VERIFY_PEER | SSL_VERIFY_CLIENT_ONCE,
                                   ((void*)0));
                    SSL_renegotiate(con);
                    i = SSL_do_handshake(con);
                    printf("SSL_do_handshake -> %d\n", i);
                    i = 0;
                    continue;
                }
                if ((buf[0] == 'K' || buf[0] == 'k')
                        && ((buf[1] == '\n') || (buf[1] == '\r'))) {
                    SSL_key_update(con, buf[0] == 'K' ?
                                        SSL_KEY_UPDATE_REQUESTED
                                        : SSL_KEY_UPDATE_NOT_REQUESTED);
                    i = SSL_do_handshake(con);
                    printf("SSL_do_handshake -> %d\n", i);
                    i = 0;
                    continue;
                }
                if (buf[0] == 'c' && ((buf[1] == '\n') || (buf[1] == '\r'))) {
                    SSL_set_verify(con, SSL_VERIFY_PEER, ((void*)0));
                    i = SSL_verify_client_post_handshake(con);
                    if (i == 0) {
                        printf("Failed to initiate request\n");
                        ERR_print_errors(bio_err);
                    } else {
                        i = SSL_do_handshake(con);
                        printf("SSL_do_handshake -> %d\n", i);
                        i = 0;
                    }
                    continue;
                }
                if (buf[0] == 'P') {
                    static const char *str = "Lets print some clear text\n";
                    BIO_write(SSL_get_wbio(con), str, strlen(str));
                }
                if (buf[0] == 'S') {
                    print_stats(bio_s_out, SSL_get_SSL_CTX(con));
                }
            }



            l = k = 0;
            for (;;) {
                k = SSL_write(con, &(buf[l]), (unsigned int)i);

                while (SSL_get_error(con, k) == 129) {
                    BIO_printf(bio_s_out, "LOOKUP renego during write\n");
                    SRP_user_pwd_free(srp_callback_parm.user);
                    srp_callback_parm.user =
                        SRP_VBASE_get1_by_user(srp_callback_parm.vb,
                                               srp_callback_parm.login);
                    if (srp_callback_parm.user)
                        BIO_printf(bio_s_out, "LOOKUP done %s\n",
                                   srp_callback_parm.user->info);
                    else
                        BIO_printf(bio_s_out, "LOOKUP not successful\n");
                    k = SSL_write(con, &(buf[l]), (unsigned int)i);
                }

                switch (SSL_get_error(con, k)) {
                case 136:
                    break;
                case 133:
                    BIO_printf(bio_s_out, "Write BLOCK (Async)\n");
                    (void)BIO_flush(bio_s_out);
                    wait_for_async(con);
                    break;
                case 130:
                case 131:
                case 129:
                    BIO_printf(bio_s_out, "Write BLOCK\n");
                    (void)BIO_flush(bio_s_out);
                    break;
                case 132:



                case 134:
                case 135:
                    BIO_printf(bio_s_out, "ERROR\n");
                    (void)BIO_flush(bio_s_out);
                    ERR_print_errors(bio_err);
                    ret = 1;
                    goto err;

                case 128:
                    BIO_printf(bio_s_out, "DONE\n");
                    (void)BIO_flush(bio_s_out);
                    ret = 1;
                    goto err;
                }
                if (k > 0) {
                    l += k;
                    i -= k;
                }
                if (i <= 0)
                    break;
            }
        }
        if (read_from_sslcon) {





            if ((!async || !SSL_waiting_for_async(con))
                    && !SSL_is_init_finished(con)) {
                i = init_ssl_connection(con);

                if (i < 0) {
                    ret = 0;
                    goto err;
                } else if (i == 0) {
                    ret = 1;
                    goto err;
                }
            } else {
 again:
                i = SSL_read(con, (char *)buf, bufsize);

                while (SSL_get_error(con, i) == 129) {
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
                    i = SSL_read(con, (char *)buf, bufsize);
                }

                switch (SSL_get_error(con, i)) {
                case 136:



                    raw_write_stdout(buf, (unsigned int)i);
                    (void)BIO_flush(bio_s_out);
                    if (SSL_has_pending(con))
                        goto again;
                    break;
                case 133:
                    BIO_printf(bio_s_out, "Read BLOCK (Async)\n");
                    (void)BIO_flush(bio_s_out);
                    wait_for_async(con);
                    break;
                case 130:
                case 131:
                    BIO_printf(bio_s_out, "Read BLOCK\n");
                    (void)BIO_flush(bio_s_out);
                    break;
                case 132:



                case 134:
                case 135:
                    BIO_printf(bio_s_out, "ERROR\n");
                    (void)BIO_flush(bio_s_out);
                    ERR_print_errors(bio_err);
                    ret = 1;
                    goto err;
                case 128:
                    BIO_printf(bio_s_out, "DONE\n");
                    (void)BIO_flush(bio_s_out);
                    ret = 1;
                    goto err;
                }
            }
        }
    }
 err:
    if (con != ((void*)0)) {
        BIO_printf(bio_s_out, "shutting down SSL\n");
        SSL_set_shutdown(con, SSL_SENT_SHUTDOWN | SSL_RECEIVED_SHUTDOWN);
        SSL_free(con);
    }
    BIO_printf(bio_s_out, "CONNECTION CLOSED\n");
    OPENSSL_clear_free(buf, bufsize);
    return ret;
}
