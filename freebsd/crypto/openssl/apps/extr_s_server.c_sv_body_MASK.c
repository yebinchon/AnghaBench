#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_4__ {int /*<<< orphan*/  info; } ;
struct TYPE_3__ {TYPE_2__* user; int /*<<< orphan*/  login; int /*<<< orphan*/  vb; } ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_CTRL_DGRAM_MTU_DISCOVER ; 
 int /*<<< orphan*/  BIO_CTRL_DGRAM_SET_RECV_TIMEOUT ; 
 int /*<<< orphan*/  BIO_CTRL_DGRAM_SET_SEND_TIMEOUT ; 
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ DGRAM_RCV_TIMEOUT ; 
 scalar_t__ DGRAM_SND_TIMEOUT ; 
 scalar_t__ DTLS1_VERSION ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,struct timeval*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int IPPROTO_SCTP ; 
 int /*<<< orphan*/  FUNC22 (char*,int) ; 
 int SOCK_DGRAM ; 
 void* FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 scalar_t__ SSL_EARLY_DATA_NOT_SENT ; 
#define  SSL_ERROR_NONE 136 
#define  SSL_ERROR_SSL 135 
#define  SSL_ERROR_SYSCALL 134 
#define  SSL_ERROR_WANT_ASYNC 133 
#define  SSL_ERROR_WANT_ASYNC_JOB 132 
#define  SSL_ERROR_WANT_READ 131 
#define  SSL_ERROR_WANT_WRITE 130 
#define  SSL_ERROR_WANT_X509_LOOKUP 129 
#define  SSL_ERROR_ZERO_RETURN 128 
 int /*<<< orphan*/  SSL_KEY_UPDATE_NOT_REQUESTED ; 
 int /*<<< orphan*/  SSL_KEY_UPDATE_REQUESTED ; 
 int /*<<< orphan*/  SSL_OP_COOKIE_EXCHANGE ; 
 int /*<<< orphan*/  SSL_OP_NO_QUERY_MTU ; 
 int SSL_READ_EARLY_DATA_ERROR ; 
 int SSL_READ_EARLY_DATA_FINISH ; 
 int SSL_RECEIVED_SHUTDOWN ; 
 int SSL_SENT_SHUTDOWN ; 
 int SSL_VERIFY_CLIENT_ONCE ; 
 int SSL_VERIFY_PEER ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ *) ; 
 int FUNC30 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC38 (int /*<<< orphan*/ ) ; 
 int FUNC39 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC40 (int /*<<< orphan*/ *,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_trace ; 
 int FUNC52 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC53 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC54 (int /*<<< orphan*/ *) ; 
 int FUNC55 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 char* FUNC56 (int,char*) ; 
 int /*<<< orphan*/  FUNC57 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC58 (int) ; 
 scalar_t__ async ; 
 int /*<<< orphan*/  bio_dump_callback ; 
 scalar_t__ bio_err ; 
 scalar_t__ bio_s_msg ; 
 scalar_t__ bio_s_out ; 
 int bufsize ; 
 int /*<<< orphan*/  FUNC59 () ; 
 int count ; 
 int /*<<< orphan*/  ctx ; 
 scalar_t__ early_data ; 
 int /*<<< orphan*/  FUNC60 (char*,char*,int) ; 
 scalar_t__ enable_timeouts ; 
 int FUNC61 () ; 
 scalar_t__ FUNC62 () ; 
 int FUNC63 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  msg_cb ; 
 int /*<<< orphan*/  FUNC64 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC65 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC66 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC67 (char*,...) ; 
 int FUNC68 (char*,int) ; 
 int /*<<< orphan*/  FUNC69 (char*,unsigned int) ; 
 int /*<<< orphan*/  s_brief ; 
 scalar_t__ s_crlf ; 
 scalar_t__ s_debug ; 
 int s_msg ; 
 scalar_t__ s_nbio ; 
 scalar_t__ s_nbio_test ; 
 int /*<<< orphan*/  s_quiet ; 
 scalar_t__ s_tlsextdebug ; 
 int FUNC70 (int,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 scalar_t__ socket_mtu ; 
 TYPE_1__ srp_callback_parm ; 
 int /*<<< orphan*/  FUNC71 (char const*) ; 
 int /*<<< orphan*/  tlsext_cb ; 
 int /*<<< orphan*/  FUNC72 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC73(int s, int stype, int prot, unsigned char *context)
{
    char *buf = NULL;
    fd_set readfds;
    int ret = 1, width;
    int k, i;
    unsigned long l;
    SSL *con = NULL;
    BIO *sbio;
    struct timeval timeout;
#if !(defined(OPENSSL_SYS_WINDOWS) || defined(OPENSSL_SYS_MSDOS))
    struct timeval *timeoutp;
#endif
#ifndef OPENSSL_NO_DTLS
# ifndef OPENSSL_NO_SCTP
    int isdtls = (stype == SOCK_DGRAM || prot == IPPROTO_SCTP);
# else
    int isdtls = (stype == SOCK_DGRAM);
# endif
#endif

    buf = FUNC56(bufsize, "server buffer");
    if (s_nbio) {
        if (!FUNC13(s, 1))
            FUNC19(bio_err);
        else if (!s_quiet)
            FUNC9(bio_err, "Turned on non blocking io\n");
    }

    con = FUNC38(ctx);
    if (con == NULL) {
        ret = -1;
        goto err;
    }

    if (s_tlsextdebug) {
        FUNC50(con, tlsext_cb);
        FUNC49(con, bio_s_out);
    }

    if (context != NULL
        && !FUNC47(con, context,
                                       FUNC71((char *)context))) {
        FUNC9(bio_err, "Error setting session id context\n");
        ret = -1;
        goto err;
    }

    if (!FUNC25(con)) {
        FUNC9(bio_err, "Error clearing SSL connection\n");
        ret = -1;
        goto err;
    }
#ifndef OPENSSL_NO_DTLS
    if (isdtls) {
# ifndef OPENSSL_NO_SCTP
        if (prot == IPPROTO_SCTP)
            sbio = FUNC7(s, BIO_NOCLOSE);
        else
# endif
            sbio = FUNC6(s, BIO_NOCLOSE);

        if (enable_timeouts) {
            timeout.tv_sec = 0;
            timeout.tv_usec = DGRAM_RCV_TIMEOUT;
            FUNC1(sbio, BIO_CTRL_DGRAM_SET_RECV_TIMEOUT, 0, &timeout);

            timeout.tv_sec = 0;
            timeout.tv_usec = DGRAM_SND_TIMEOUT;
            FUNC1(sbio, BIO_CTRL_DGRAM_SET_SEND_TIMEOUT, 0, &timeout);
        }

        if (socket_mtu) {
            if (socket_mtu < FUNC15(con)) {
                FUNC9(bio_err, "MTU too small. Must be at least %ld\n",
                           FUNC15(con));
                ret = -1;
                FUNC4(sbio);
                goto err;
            }
            FUNC46(con, SSL_OP_NO_QUERY_MTU);
            if (!FUNC16(con, socket_mtu)) {
                FUNC9(bio_err, "Failed to set MTU\n");
                ret = -1;
                FUNC4(sbio);
                goto err;
            }
        } else
            /* want to do MTU discovery */
            FUNC1(sbio, BIO_CTRL_DGRAM_MTU_DISCOVER, 0, NULL);

# ifndef OPENSSL_NO_SCTP
        if (prot != IPPROTO_SCTP)
# endif
            /* Turn on cookie exchange. Not necessary for SCTP */
            FUNC46(con, SSL_OP_COOKIE_EXCHANGE);
    } else
#endif
        sbio = FUNC8(s, BIO_NOCLOSE);

    if (sbio == NULL) {
        FUNC9(bio_err, "Unable to create BIO\n");
        FUNC19(bio_err);
        goto err;
    }

    if (s_nbio_test) {
        BIO *test;

        test = FUNC5(FUNC2());
        sbio = FUNC10(test, sbio);
    }

    FUNC43(con, sbio, sbio);
    FUNC42(con);
    /* SSL_set_fd(con,s); */

    if (s_debug) {
        FUNC11(FUNC31(con), bio_dump_callback);
        FUNC12(FUNC31(con), (char *)bio_s_out);
    }
    if (s_msg) {
#ifndef OPENSSL_NO_SSL_TRACE
        if (s_msg == 2)
            FUNC44(con, SSL_trace);
        else
#endif
            FUNC44(con, msg_cb);
        FUNC45(con, bio_s_msg ? bio_s_msg : bio_s_out);
    }

    if (s_tlsextdebug) {
        FUNC50(con, tlsext_cb);
        FUNC49(con, bio_s_out);
    }

    if (early_data) {
        int write_header = 1, edret = SSL_READ_EARLY_DATA_ERROR;
        size_t readbytes;

        while (edret != SSL_READ_EARLY_DATA_FINISH) {
            for (;;) {
                edret = FUNC40(con, buf, bufsize, &readbytes);
                if (edret != SSL_READ_EARLY_DATA_ERROR)
                    break;

                switch (FUNC30(con, 0)) {
                case SSL_ERROR_WANT_WRITE:
                case SSL_ERROR_WANT_ASYNC:
                case SSL_ERROR_WANT_READ:
                    /* Just keep trying - busy waiting */
                    continue;
                default:
                    FUNC9(bio_err, "Error reading early data\n");
                    FUNC19(bio_err);
                    goto err;
                }
            }
            if (readbytes > 0) {
                if (write_header) {
                    FUNC9(bio_s_out, "Early data received:\n");
                    write_header = 0;
                }
                FUNC69(buf, (unsigned int)readbytes);
                (void)FUNC3(bio_s_out);
            }
        }
        if (write_header) {
            if (FUNC29(con) == SSL_EARLY_DATA_NOT_SENT)
                FUNC9(bio_s_out, "No early data received\n");
            else
                FUNC9(bio_s_out, "Early data was rejected\n");
        } else {
            FUNC9(bio_s_out, "\nEnd of early data\n");
        }
        if (FUNC36(con))
            FUNC65(con);
    }

    if (FUNC61() > s)
        width = FUNC61() + 1;
    else
        width = s + 1;
    for (;;) {
        int read_from_terminal;
        int read_from_sslcon;

        read_from_terminal = 0;
        read_from_sslcon = FUNC33(con)
                           || (async && FUNC54(con));

        if (!read_from_sslcon) {
            FUNC21(&readfds);
#if !defined(OPENSSL_SYS_WINDOWS) && !defined(OPENSSL_SYS_MSDOS)
            FUNC64(FUNC61(), &readfds);
#endif
            FUNC64(s, &readfds);
            /*
             * Note: under VMS with SOCKETSHR the second parameter is
             * currently of type (int *) whereas under other systems it is
             * (void *) if you don't have a cast it will choke the compiler:
             * if you do have a cast then you can either go for (int *) or
             * (void *).
             */
#if defined(OPENSSL_SYS_WINDOWS) || defined(OPENSSL_SYS_MSDOS)
            /*
             * Under DOS (non-djgpp) and Windows we can't select on stdin:
             * only on sockets. As a workaround we timeout the select every
             * second and check for any keypress. In a proper Windows
             * application we wouldn't do this because it is inefficient.
             */
            timeout.tv_sec = 1;
            timeout.tv_usec = 0;
            i = select(width, (void *)&readfds, NULL, NULL, &timeout);
            if (has_stdin_waiting())
                read_from_terminal = 1;
            if ((i < 0) || (!i && !read_from_terminal))
                continue;
#else
            if (FUNC35(con) && FUNC17(con, &timeout))
                timeoutp = &timeout;
            else
                timeoutp = NULL;

            i = FUNC70(width, (void *)&readfds, NULL, NULL, timeoutp);

            if ((FUNC35(con)) && FUNC18(con) > 0)
                FUNC9(bio_err, "TIMEOUT occurred\n");

            if (i <= 0)
                continue;
            if (FUNC20(FUNC61(), &readfds))
                read_from_terminal = 1;
#endif
            if (FUNC20(s, &readfds))
                read_from_sslcon = 1;
        }
        if (read_from_terminal) {
            if (s_crlf) {
                int j, lf_num;

                i = FUNC68(buf, bufsize / 2);
                lf_num = 0;
                /* both loops are skipped when i <= 0 */
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
                FUNC58(lf_num == 0);
            } else {
                i = FUNC68(buf, bufsize);
            }

            if (!s_quiet && !s_brief) {
                if ((i <= 0) || (buf[0] == 'Q')) {
                    FUNC9(bio_s_out, "DONE\n");
                    (void)FUNC3(bio_s_out);
                    FUNC0(s);
                    FUNC59();
                    ret = -11;
                    goto err;
                }
                if ((i <= 0) || (buf[0] == 'q')) {
                    FUNC9(bio_s_out, "DONE\n");
                    (void)FUNC3(bio_s_out);
                    if (FUNC53(con) != DTLS1_VERSION)
                        FUNC0(s);
                    /*
                     * close_accept_socket(); ret= -11;
                     */
                    goto err;
                }
#ifndef OPENSSL_NO_HEARTBEATS
                if ((buf[0] == 'B') && ((buf[1] == '\n') || (buf[1] == '\r'))) {
                    FUNC9(bio_err, "HEARTBEATING\n");
                    FUNC34(con);
                    i = 0;
                    continue;
                }
#endif
                if ((buf[0] == 'r') && ((buf[1] == '\n') || (buf[1] == '\r'))) {
                    FUNC41(con);
                    i = FUNC26(con);
                    FUNC67("SSL_do_handshake -> %d\n", i);
                    i = 0;      /* 13; */
                    continue;
                }
                if ((buf[0] == 'R') && ((buf[1] == '\n') || (buf[1] == '\r'))) {
                    FUNC51(con,
                                   SSL_VERIFY_PEER | SSL_VERIFY_CLIENT_ONCE,
                                   NULL);
                    FUNC41(con);
                    i = FUNC26(con);
                    FUNC67("SSL_do_handshake -> %d\n", i);
                    i = 0;      /* 13; */
                    continue;
                }
                if ((buf[0] == 'K' || buf[0] == 'k')
                        && ((buf[1] == '\n') || (buf[1] == '\r'))) {
                    FUNC37(con, buf[0] == 'K' ?
                                        SSL_KEY_UPDATE_REQUESTED
                                        : SSL_KEY_UPDATE_NOT_REQUESTED);
                    i = FUNC26(con);
                    FUNC67("SSL_do_handshake -> %d\n", i);
                    i = 0;
                    continue;
                }
                if (buf[0] == 'c' && ((buf[1] == '\n') || (buf[1] == '\r'))) {
                    FUNC51(con, SSL_VERIFY_PEER, NULL);
                    i = FUNC52(con);
                    if (i == 0) {
                        FUNC67("Failed to initiate request\n");
                        FUNC19(bio_err);
                    } else {
                        i = FUNC26(con);
                        FUNC67("SSL_do_handshake -> %d\n", i);
                        i = 0;
                    }
                    continue;
                }
                if (buf[0] == 'P') {
                    static const char *str = "Lets print some clear text\n";
                    FUNC14(FUNC32(con), str, FUNC71(str));
                }
                if (buf[0] == 'S') {
                    FUNC66(bio_s_out, FUNC28(con));
                }
            }
#ifdef CHARSET_EBCDIC
            ebcdic2ascii(buf, buf, i);
#endif
            l = k = 0;
            for (;;) {
                /* should do a select for the write */
#ifdef RENEG
                static count = 0;
                if (++count == 100) {
                    count = 0;
                    SSL_renegotiate(con);
                }
#endif
                k = FUNC55(con, &(buf[l]), (unsigned int)i);
#ifndef OPENSSL_NO_SRP
                while (FUNC30(con, k) == SSL_ERROR_WANT_X509_LOOKUP) {
                    FUNC9(bio_s_out, "LOOKUP renego during write\n");
                    FUNC24(srp_callback_parm.user);
                    srp_callback_parm.user =
                        FUNC23(srp_callback_parm.vb,
                                               srp_callback_parm.login);
                    if (srp_callback_parm.user)
                        FUNC9(bio_s_out, "LOOKUP done %s\n",
                                   srp_callback_parm.user->info);
                    else
                        FUNC9(bio_s_out, "LOOKUP not successful\n");
                    k = FUNC55(con, &(buf[l]), (unsigned int)i);
                }
#endif
                switch (FUNC30(con, k)) {
                case SSL_ERROR_NONE:
                    break;
                case SSL_ERROR_WANT_ASYNC:
                    FUNC9(bio_s_out, "Write BLOCK (Async)\n");
                    (void)FUNC3(bio_s_out);
                    FUNC72(con);
                    break;
                case SSL_ERROR_WANT_WRITE:
                case SSL_ERROR_WANT_READ:
                case SSL_ERROR_WANT_X509_LOOKUP:
                    FUNC9(bio_s_out, "Write BLOCK\n");
                    (void)FUNC3(bio_s_out);
                    break;
                case SSL_ERROR_WANT_ASYNC_JOB:
                    /*
                     * This shouldn't ever happen in s_server. Treat as an error
                     */
                case SSL_ERROR_SYSCALL:
                case SSL_ERROR_SSL:
                    FUNC9(bio_s_out, "ERROR\n");
                    (void)FUNC3(bio_s_out);
                    FUNC19(bio_err);
                    ret = 1;
                    goto err;
                    /* break; */
                case SSL_ERROR_ZERO_RETURN:
                    FUNC9(bio_s_out, "DONE\n");
                    (void)FUNC3(bio_s_out);
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
            /*
             * init_ssl_connection handles all async events itself so if we're
             * waiting for async then we shouldn't go back into
             * init_ssl_connection
             */
            if ((!async || !FUNC54(con))
                    && !FUNC36(con)) {
                i = FUNC63(con);

                if (i < 0) {
                    ret = 0;
                    goto err;
                } else if (i == 0) {
                    ret = 1;
                    goto err;
                }
            } else {
 again:
                i = FUNC39(con, (char *)buf, bufsize);
#ifndef OPENSSL_NO_SRP
                while (FUNC30(con, i) == SSL_ERROR_WANT_X509_LOOKUP) {
                    FUNC9(bio_s_out, "LOOKUP renego during read\n");
                    FUNC24(srp_callback_parm.user);
                    srp_callback_parm.user =
                        FUNC23(srp_callback_parm.vb,
                                               srp_callback_parm.login);
                    if (srp_callback_parm.user)
                        FUNC9(bio_s_out, "LOOKUP done %s\n",
                                   srp_callback_parm.user->info);
                    else
                        FUNC9(bio_s_out, "LOOKUP not successful\n");
                    i = FUNC39(con, (char *)buf, bufsize);
                }
#endif
                switch (FUNC30(con, i)) {
                case SSL_ERROR_NONE:
#ifdef CHARSET_EBCDIC
                    ascii2ebcdic(buf, buf, i);
#endif
                    FUNC69(buf, (unsigned int)i);
                    (void)FUNC3(bio_s_out);
                    if (FUNC33(con))
                        goto again;
                    break;
                case SSL_ERROR_WANT_ASYNC:
                    FUNC9(bio_s_out, "Read BLOCK (Async)\n");
                    (void)FUNC3(bio_s_out);
                    FUNC72(con);
                    break;
                case SSL_ERROR_WANT_WRITE:
                case SSL_ERROR_WANT_READ:
                    FUNC9(bio_s_out, "Read BLOCK\n");
                    (void)FUNC3(bio_s_out);
                    break;
                case SSL_ERROR_WANT_ASYNC_JOB:
                    /*
                     * This shouldn't ever happen in s_server. Treat as an error
                     */
                case SSL_ERROR_SYSCALL:
                case SSL_ERROR_SSL:
                    FUNC9(bio_s_out, "ERROR\n");
                    (void)FUNC3(bio_s_out);
                    FUNC19(bio_err);
                    ret = 1;
                    goto err;
                case SSL_ERROR_ZERO_RETURN:
                    FUNC9(bio_s_out, "DONE\n");
                    (void)FUNC3(bio_s_out);
                    ret = 1;
                    goto err;
                }
            }
        }
    }
 err:
    if (con != NULL) {
        FUNC9(bio_s_out, "shutting down SSL\n");
        FUNC48(con, SSL_SENT_SHUTDOWN | SSL_RECEIVED_SHUTDOWN);
        FUNC27(con);
    }
    FUNC9(bio_s_out, "CONNECTION CLOSED\n");
    FUNC22(buf, bufsize);
    return ret;
}