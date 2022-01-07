
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
struct TYPE_2__ {int depth; } ;
typedef int SSL_METHOD ;
typedef int SSL_CTX ;
typedef int SSL ;
typedef int OPTION_CHOICE ;


 int BIO_closesocket (int ) ;
 int BIO_printf (int ,char*,...) ;
 int BIO_snprintf (char*,int,int ,char*) ;
 int ERR_print_errors (int ) ;
 int SECONDS ;
 int SSL3_VERSION ;
 char* SSL_CONNECT_NAME ;
 int SSL_CTX_free (int *) ;
 int * SSL_CTX_new (int const*) ;
 int SSL_CTX_set_cipher_list (int *,char*) ;
 int SSL_CTX_set_ciphersuites (int *,char*) ;
 scalar_t__ SSL_CTX_set_max_proto_version (int *,int) ;
 int SSL_CTX_set_mode (int *,int ) ;
 int SSL_CTX_set_options (int *,int ) ;
 int SSL_CTX_set_quiet_shutdown (int *,int) ;
 int SSL_MODE_AUTO_RETRY ;
 int SSL_OP_ALL ;
 int SSL_RECEIVED_SHUTDOWN ;
 int SSL_SENT_SHUTDOWN ;
 int SSL_free (int *) ;
 int SSL_get_fd (int *) ;
 int SSL_read (int *,char*,int) ;
 scalar_t__ SSL_session_reused (int *) ;
 int SSL_set_shutdown (int *,int) ;
 int SSL_version (int *) ;
 scalar_t__ SSL_write (int *,char*,int) ;
 int START ;
 int STOP ;
 int TLS1_VERSION ;
 int * TLS_client_method () ;
 int bio_err ;
 int ctx_set_verify_locations (int *,char*,char*,int,int) ;
 int * doConnection (int *,char*,int *) ;
 int fflush (int ) ;
 int fmt_http_get_cmd ;
 size_t fmt_http_get_cmd_size ;
 int fputc (int,int ) ;
 char* getenv (char*) ;
 char* opt_arg () ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_int (char*,int*) ;
 int opt_next () ;
 int opt_num_rest () ;
 int printf (char*,...) ;
 int s_time_options ;
 int set_cert_stuff (int *,char*,char*) ;
 int set_nameopt (char*) ;
 int stdout ;
 size_t strlen (char*) ;
 scalar_t__ time (int *) ;
 double tm_Time_F (int ) ;
 TYPE_1__ verify_args ;

int s_time_main(int argc, char **argv)
{
    char buf[1024 * 8];
    SSL *scon = ((void*)0);
    SSL_CTX *ctx = ((void*)0);
    const SSL_METHOD *meth = ((void*)0);
    char *CApath = ((void*)0), *CAfile = ((void*)0), *cipher = ((void*)0), *ciphersuites = ((void*)0);
    char *www_path = ((void*)0);
    char *host = SSL_CONNECT_NAME, *certfile = ((void*)0), *keyfile = ((void*)0), *prog;
    double totalTime = 0.0;
    int noCApath = 0, noCAfile = 0;
    int maxtime = SECONDS, nConn = 0, perform = 3, ret = 1, i, st_bugs = 0;
    long bytes_read = 0, finishtime = 0;
    OPTION_CHOICE o;
    int max_version = 0, ver, buf_len;
    size_t buf_size;

    meth = TLS_client_method();

    prog = opt_init(argc, argv, s_time_options);
    while ((o = opt_next()) != 140) {
        switch (o) {
        case 140:
        case 139:
 opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 138:
            opt_help(s_time_options);
            ret = 0;
            goto end;
        case 141:
            host = opt_arg();
            break;
        case 132:
            perform = 2;
            break;
        case 135:
            perform = 1;
            break;
        case 129:
            if (!opt_int(opt_arg(), &verify_args.depth))
                goto opthelp;
            BIO_printf(bio_err, "%s: verify depth is %d\n",
                       prog, verify_args.depth);
            break;
        case 144:
            certfile = opt_arg();
            break;
        case 136:
            if (!set_nameopt(opt_arg()))
                goto end;
            break;
        case 137:
            keyfile = opt_arg();
            break;
        case 145:
            CApath = opt_arg();
            break;
        case 146:
            CAfile = opt_arg();
            break;
        case 133:
            noCApath = 1;
            break;
        case 134:
            noCAfile = 1;
            break;
        case 143:
            cipher = opt_arg();
            break;
        case 142:
            ciphersuites = opt_arg();
            break;
        case 147:
            st_bugs = 1;
            break;
        case 130:
            if (!opt_int(opt_arg(), &maxtime))
                goto opthelp;
            break;
        case 128:
            www_path = opt_arg();
            buf_size = strlen(www_path) + fmt_http_get_cmd_size;
            if (buf_size > sizeof(buf)) {
                BIO_printf(bio_err, "%s: -www option is too long\n", prog);
                goto end;
            }
            break;
        case 131:
            max_version = SSL3_VERSION;
            break;
        }
    }
    argc = opt_num_rest();
    if (argc != 0)
        goto opthelp;

    if (cipher == ((void*)0))
        cipher = getenv("SSL_CIPHER");

    if ((ctx = SSL_CTX_new(meth)) == ((void*)0))
        goto end;

    SSL_CTX_set_mode(ctx, SSL_MODE_AUTO_RETRY);
    SSL_CTX_set_quiet_shutdown(ctx, 1);
    if (SSL_CTX_set_max_proto_version(ctx, max_version) == 0)
        goto end;

    if (st_bugs)
        SSL_CTX_set_options(ctx, SSL_OP_ALL);
    if (cipher != ((void*)0) && !SSL_CTX_set_cipher_list(ctx, cipher))
        goto end;
    if (ciphersuites != ((void*)0) && !SSL_CTX_set_ciphersuites(ctx, ciphersuites))
        goto end;
    if (!set_cert_stuff(ctx, certfile, keyfile))
        goto end;

    if (!ctx_set_verify_locations(ctx, CAfile, CApath, noCAfile, noCApath)) {
        ERR_print_errors(bio_err);
        goto end;
    }
    if (!(perform & 1))
        goto next;
    printf("Collecting connection statistics for %d seconds\n", maxtime);



    bytes_read = 0;
    finishtime = (long)time(((void*)0)) + maxtime;
    tm_Time_F(START);
    for (;;) {
        if (finishtime < (long)time(((void*)0)))
            break;

        if ((scon = doConnection(((void*)0), host, ctx)) == ((void*)0))
            goto end;

        if (www_path != ((void*)0)) {
            buf_len = BIO_snprintf(buf, sizeof(buf), fmt_http_get_cmd,
                                   www_path);
            if (buf_len <= 0 || SSL_write(scon, buf, buf_len) <= 0)
                goto end;
            while ((i = SSL_read(scon, buf, sizeof(buf))) > 0)
                bytes_read += i;
        }
        SSL_set_shutdown(scon, SSL_SENT_SHUTDOWN | SSL_RECEIVED_SHUTDOWN);
        BIO_closesocket(SSL_get_fd(scon));

        nConn += 1;
        if (SSL_session_reused(scon)) {
            ver = 'r';
        } else {
            ver = SSL_version(scon);
            if (ver == TLS1_VERSION)
                ver = 't';
            else if (ver == SSL3_VERSION)
                ver = '3';
            else
                ver = '*';
        }
        fputc(ver, stdout);
        fflush(stdout);

        SSL_free(scon);
        scon = ((void*)0);
    }
    totalTime += tm_Time_F(STOP);

    i = (int)((long)time(((void*)0)) - finishtime + maxtime);
    printf
        ("\n\n%d connections in %.2fs; %.2f connections/user sec, bytes read %ld\n",
         nConn, totalTime, ((double)nConn / totalTime), bytes_read);
    printf
        ("%d connections in %ld real seconds, %ld bytes read per connection\n",
         nConn, (long)time(((void*)0)) - finishtime + maxtime, bytes_read / nConn);





 next:
    if (!(perform & 2))
        goto end;
    printf("\n\nNow timing with session id reuse.\n");


    if ((scon = doConnection(((void*)0), host, ctx)) == ((void*)0)) {
        BIO_printf(bio_err, "Unable to get connection\n");
        goto end;
    }

    if (www_path != ((void*)0)) {
        buf_len = BIO_snprintf(buf, sizeof(buf), fmt_http_get_cmd, www_path);
        if (buf_len <= 0 || SSL_write(scon, buf, buf_len) <= 0)
            goto end;
        while ((i = SSL_read(scon, buf, sizeof(buf))) > 0)
            continue;
    }
    SSL_set_shutdown(scon, SSL_SENT_SHUTDOWN | SSL_RECEIVED_SHUTDOWN);
    BIO_closesocket(SSL_get_fd(scon));

    nConn = 0;
    totalTime = 0.0;

    finishtime = (long)time(((void*)0)) + maxtime;

    printf("starting\n");
    bytes_read = 0;
    tm_Time_F(START);

    for (;;) {
        if (finishtime < (long)time(((void*)0)))
            break;

        if ((doConnection(scon, host, ctx)) == ((void*)0))
            goto end;

        if (www_path != ((void*)0)) {
            buf_len = BIO_snprintf(buf, sizeof(buf), fmt_http_get_cmd,
                                   www_path);
            if (buf_len <= 0 || SSL_write(scon, buf, buf_len) <= 0)
                goto end;
            while ((i = SSL_read(scon, buf, sizeof(buf))) > 0)
                bytes_read += i;
        }
        SSL_set_shutdown(scon, SSL_SENT_SHUTDOWN | SSL_RECEIVED_SHUTDOWN);
        BIO_closesocket(SSL_get_fd(scon));

        nConn += 1;
        if (SSL_session_reused(scon)) {
            ver = 'r';
        } else {
            ver = SSL_version(scon);
            if (ver == TLS1_VERSION)
                ver = 't';
            else if (ver == SSL3_VERSION)
                ver = '3';
            else
                ver = '*';
        }
        fputc(ver, stdout);
        fflush(stdout);
    }
    totalTime += tm_Time_F(STOP);

    printf
        ("\n\n%d connections in %.2fs; %.2f connections/user sec, bytes read %ld\n",
         nConn, totalTime, ((double)nConn / totalTime), bytes_read);
    printf
        ("%d connections in %ld real seconds, %ld bytes read per connection\n",
         nConn, (long)time(((void*)0)) - finishtime + maxtime, bytes_read / nConn);

    ret = 0;

 end:
    SSL_free(scon);
    SSL_CTX_free(ctx);
    return ret;
}
