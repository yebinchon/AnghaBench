#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int depth; } ;
typedef  int /*<<< orphan*/  SSL_METHOD ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int OPTION_CHOICE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  OPT_BUGS 147 
#define  OPT_CAFILE 146 
#define  OPT_CAPATH 145 
#define  OPT_CERT 144 
#define  OPT_CIPHER 143 
#define  OPT_CIPHERSUITES 142 
#define  OPT_CONNECT 141 
#define  OPT_EOF 140 
#define  OPT_ERR 139 
#define  OPT_HELP 138 
#define  OPT_KEY 137 
#define  OPT_NAMEOPT 136 
#define  OPT_NEW 135 
#define  OPT_NOCAFILE 134 
#define  OPT_NOCAPATH 133 
#define  OPT_REUSE 132 
#define  OPT_SSL3 131 
#define  OPT_TIME 130 
#define  OPT_VERIFY 129 
#define  OPT_WWW 128 
 int SECONDS ; 
 int SSL3_VERSION ; 
 char* SSL_CONNECT_NAME ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SSL_MODE_AUTO_RETRY ; 
 int /*<<< orphan*/  SSL_OP_ALL ; 
 int SSL_RECEIVED_SHUTDOWN ; 
 int SSL_SENT_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  START ; 
 int /*<<< orphan*/  STOP ; 
 int TLS1_VERSION ; 
 int /*<<< orphan*/ * FUNC19 () ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*,char*,int,int) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fmt_http_get_cmd ; 
 size_t fmt_http_get_cmd_size ; 
 int /*<<< orphan*/  FUNC23 (int,int /*<<< orphan*/ ) ; 
 char* FUNC24 (char*) ; 
 char* FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 char* FUNC27 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (char*,int*) ; 
 int FUNC29 () ; 
 int FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (char*,...) ; 
 int /*<<< orphan*/  s_time_options ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC33 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 size_t FUNC34 (char*) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ *) ; 
 double FUNC36 (int /*<<< orphan*/ ) ; 
 TYPE_1__ verify_args ; 

int FUNC37(int argc, char **argv)
{
    char buf[1024 * 8];
    SSL *scon = NULL;
    SSL_CTX *ctx = NULL;
    const SSL_METHOD *meth = NULL;
    char *CApath = NULL, *CAfile = NULL, *cipher = NULL, *ciphersuites = NULL;
    char *www_path = NULL;
    char *host = SSL_CONNECT_NAME, *certfile = NULL, *keyfile = NULL, *prog;
    double totalTime = 0.0;
    int noCApath = 0, noCAfile = 0;
    int maxtime = SECONDS, nConn = 0, perform = 3, ret = 1, i, st_bugs = 0;
    long bytes_read = 0, finishtime = 0;
    OPTION_CHOICE o;
    int max_version = 0, ver, buf_len;
    size_t buf_size;

    meth = FUNC19();

    prog = FUNC27(argc, argv, s_time_options);
    while ((o = FUNC29()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
 opthelp:
            FUNC1(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            FUNC26(s_time_options);
            ret = 0;
            goto end;
        case OPT_CONNECT:
            host = FUNC25();
            break;
        case OPT_REUSE:
            perform = 2;
            break;
        case OPT_NEW:
            perform = 1;
            break;
        case OPT_VERIFY:
            if (!FUNC28(FUNC25(), &verify_args.depth))
                goto opthelp;
            FUNC1(bio_err, "%s: verify depth is %d\n",
                       prog, verify_args.depth);
            break;
        case OPT_CERT:
            certfile = FUNC25();
            break;
        case OPT_NAMEOPT:
            if (!FUNC33(FUNC25()))
                goto end;
            break;
        case OPT_KEY:
            keyfile = FUNC25();
            break;
        case OPT_CAPATH:
            CApath = FUNC25();
            break;
        case OPT_CAFILE:
            CAfile = FUNC25();
            break;
        case OPT_NOCAPATH:
            noCApath = 1;
            break;
        case OPT_NOCAFILE:
            noCAfile = 1;
            break;
        case OPT_CIPHER:
            cipher = FUNC25();
            break;
        case OPT_CIPHERSUITES:
            ciphersuites = FUNC25();
            break;
        case OPT_BUGS:
            st_bugs = 1;
            break;
        case OPT_TIME:
            if (!FUNC28(FUNC25(), &maxtime))
                goto opthelp;
            break;
        case OPT_WWW:
            www_path = FUNC25();
            buf_size = FUNC34(www_path) + fmt_http_get_cmd_size;
            if (buf_size > sizeof(buf)) {
                FUNC1(bio_err, "%s: -www option is too long\n", prog);
                goto end;
            }
            break;
        case OPT_SSL3:
            max_version = SSL3_VERSION;
            break;
        }
    }
    argc = FUNC30();
    if (argc != 0)
        goto opthelp;

    if (cipher == NULL)
        cipher = FUNC24("SSL_CIPHER");

    if ((ctx = FUNC5(meth)) == NULL)
        goto end;

    FUNC9(ctx, SSL_MODE_AUTO_RETRY);
    FUNC11(ctx, 1);
    if (FUNC8(ctx, max_version) == 0)
        goto end;

    if (st_bugs)
        FUNC10(ctx, SSL_OP_ALL);
    if (cipher != NULL && !FUNC6(ctx, cipher))
        goto end;
    if (ciphersuites != NULL && !FUNC7(ctx, ciphersuites))
        goto end;
    if (!FUNC32(ctx, certfile, keyfile))
        goto end;

    if (!FUNC20(ctx, CAfile, CApath, noCAfile, noCApath)) {
        FUNC3(bio_err);
        goto end;
    }
    if (!(perform & 1))
        goto next;
    FUNC31("Collecting connection statistics for %d seconds\n", maxtime);

    /* Loop and time how long it takes to make connections */

    bytes_read = 0;
    finishtime = (long)FUNC35(NULL) + maxtime;
    FUNC36(START);
    for (;;) {
        if (finishtime < (long)FUNC35(NULL))
            break;

        if ((scon = FUNC21(NULL, host, ctx)) == NULL)
            goto end;

        if (www_path != NULL) {
            buf_len = FUNC2(buf, sizeof(buf), fmt_http_get_cmd,
                                   www_path);
            if (buf_len <= 0 || FUNC18(scon, buf, buf_len) <= 0)
                goto end;
            while ((i = FUNC14(scon, buf, sizeof(buf))) > 0)
                bytes_read += i;
        }
        FUNC16(scon, SSL_SENT_SHUTDOWN | SSL_RECEIVED_SHUTDOWN);
        FUNC0(FUNC13(scon));

        nConn += 1;
        if (FUNC15(scon)) {
            ver = 'r';
        } else {
            ver = FUNC17(scon);
            if (ver == TLS1_VERSION)
                ver = 't';
            else if (ver == SSL3_VERSION)
                ver = '3';
            else
                ver = '*';
        }
        FUNC23(ver, stdout);
        FUNC22(stdout);

        FUNC12(scon);
        scon = NULL;
    }
    totalTime += FUNC36(STOP); /* Add the time for this iteration */

    i = (int)((long)FUNC35(NULL) - finishtime + maxtime);
    FUNC31
        ("\n\n%d connections in %.2fs; %.2f connections/user sec, bytes read %ld\n",
         nConn, totalTime, ((double)nConn / totalTime), bytes_read);
    FUNC31
        ("%d connections in %ld real seconds, %ld bytes read per connection\n",
         nConn, (long)FUNC35(NULL) - finishtime + maxtime, bytes_read / nConn);

    /*
     * Now loop and time connections using the same session id over and over
     */

 next:
    if (!(perform & 2))
        goto end;
    FUNC31("\n\nNow timing with session id reuse.\n");

    /* Get an SSL object so we can reuse the session id */
    if ((scon = FUNC21(NULL, host, ctx)) == NULL) {
        FUNC1(bio_err, "Unable to get connection\n");
        goto end;
    }

    if (www_path != NULL) {
        buf_len = FUNC2(buf, sizeof(buf), fmt_http_get_cmd, www_path);
        if (buf_len <= 0 || FUNC18(scon, buf, buf_len) <= 0)
            goto end;
        while ((i = FUNC14(scon, buf, sizeof(buf))) > 0)
            continue;
    }
    FUNC16(scon, SSL_SENT_SHUTDOWN | SSL_RECEIVED_SHUTDOWN);
    FUNC0(FUNC13(scon));

    nConn = 0;
    totalTime = 0.0;

    finishtime = (long)FUNC35(NULL) + maxtime;

    FUNC31("starting\n");
    bytes_read = 0;
    FUNC36(START);

    for (;;) {
        if (finishtime < (long)FUNC35(NULL))
            break;

        if ((FUNC21(scon, host, ctx)) == NULL)
            goto end;

        if (www_path != NULL) {
            buf_len = FUNC2(buf, sizeof(buf), fmt_http_get_cmd,
                                   www_path);
            if (buf_len <= 0 || FUNC18(scon, buf, buf_len) <= 0)
                goto end;
            while ((i = FUNC14(scon, buf, sizeof(buf))) > 0)
                bytes_read += i;
        }
        FUNC16(scon, SSL_SENT_SHUTDOWN | SSL_RECEIVED_SHUTDOWN);
        FUNC0(FUNC13(scon));

        nConn += 1;
        if (FUNC15(scon)) {
            ver = 'r';
        } else {
            ver = FUNC17(scon);
            if (ver == TLS1_VERSION)
                ver = 't';
            else if (ver == SSL3_VERSION)
                ver = '3';
            else
                ver = '*';
        }
        FUNC23(ver, stdout);
        FUNC22(stdout);
    }
    totalTime += FUNC36(STOP); /* Add the time for this iteration */

    FUNC31
        ("\n\n%d connections in %.2fs; %.2f connections/user sec, bytes read %ld\n",
         nConn, totalTime, ((double)nConn / totalTime), bytes_read);
    FUNC31
        ("%d connections in %ld real seconds, %ld bytes read per connection\n",
         nConn, (long)FUNC35(NULL) - finishtime + maxtime, bytes_read / nConn);

    ret = 0;

 end:
    FUNC12(scon);
    FUNC4(ctx);
    return ret;
}