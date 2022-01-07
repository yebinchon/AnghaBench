
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* method; } ;
struct TYPE_9__ {TYPE_1__* method; } ;
struct TYPE_8__ {scalar_t__ ssl_accept; scalar_t__ ssl_connect; } ;
typedef TYPE_1__ SSL_METHOD ;
typedef TYPE_2__ SSL_CTX ;
typedef int SSL_CONF_CTX ;
typedef int SSL_CONF_CMD ;
typedef TYPE_3__ SSL ;


 int ERR_R_PASSED_NULL_PARAMETER ;
 int ERR_add_error_data (int,char*,char const*,...) ;
 int SSL_CONF_CTX_finish (int *) ;
 int SSL_CONF_CTX_free (int *) ;
 int * SSL_CONF_CTX_new () ;
 int SSL_CONF_CTX_set_flags (int *,unsigned int) ;
 int SSL_CONF_CTX_set_ssl (int *,TYPE_3__*) ;
 int SSL_CONF_CTX_set_ssl_ctx (int *,TYPE_2__*) ;
 unsigned int SSL_CONF_FLAG_CERTIFICATE ;
 unsigned int SSL_CONF_FLAG_CLIENT ;
 unsigned int SSL_CONF_FLAG_FILE ;
 unsigned int SSL_CONF_FLAG_REQUIRE_PRIVATE ;
 unsigned int SSL_CONF_FLAG_SERVER ;
 int SSL_CONF_cmd (int *,char*,char*) ;
 int SSL_F_SSL_DO_CONFIG ;
 int SSL_R_BAD_VALUE ;
 int SSL_R_INVALID_CONFIGURATION_NAME ;
 int SSL_R_UNKNOWN_COMMAND ;
 int SSLerr (int ,int ) ;
 int * conf_ssl_get (size_t,char const**,size_t*) ;
 int conf_ssl_get_cmd (int const*,size_t,char**,char**) ;
 int conf_ssl_name_find (char const*,size_t*) ;
 scalar_t__ ssl_undefined_function ;

__attribute__((used)) static int ssl_do_config(SSL *s, SSL_CTX *ctx, const char *name, int system)
{
    SSL_CONF_CTX *cctx = ((void*)0);
    size_t i, idx, cmd_count;
    int rv = 0;
    unsigned int flags;
    const SSL_METHOD *meth;
    const SSL_CONF_CMD *cmds;

    if (s == ((void*)0) && ctx == ((void*)0)) {
        SSLerr(SSL_F_SSL_DO_CONFIG, ERR_R_PASSED_NULL_PARAMETER);
        goto err;
    }

    if (name == ((void*)0) && system)
        name = "system_default";
    if (!conf_ssl_name_find(name, &idx)) {
        if (!system) {
            SSLerr(SSL_F_SSL_DO_CONFIG, SSL_R_INVALID_CONFIGURATION_NAME);
            ERR_add_error_data(2, "name=", name);
        }
        goto err;
    }
    cmds = conf_ssl_get(idx, &name, &cmd_count);
    cctx = SSL_CONF_CTX_new();
    if (cctx == ((void*)0))
        goto err;
    flags = SSL_CONF_FLAG_FILE;
    if (!system)
        flags |= SSL_CONF_FLAG_CERTIFICATE | SSL_CONF_FLAG_REQUIRE_PRIVATE;
    if (s != ((void*)0)) {
        meth = s->method;
        SSL_CONF_CTX_set_ssl(cctx, s);
    } else {
        meth = ctx->method;
        SSL_CONF_CTX_set_ssl_ctx(cctx, ctx);
    }
    if (meth->ssl_accept != ssl_undefined_function)
        flags |= SSL_CONF_FLAG_SERVER;
    if (meth->ssl_connect != ssl_undefined_function)
        flags |= SSL_CONF_FLAG_CLIENT;
    SSL_CONF_CTX_set_flags(cctx, flags);
    for (i = 0; i < cmd_count; i++) {
        char *cmdstr, *arg;

        conf_ssl_get_cmd(cmds, i, &cmdstr, &arg);
        rv = SSL_CONF_cmd(cctx, cmdstr, arg);
        if (rv <= 0) {
            if (rv == -2)
                SSLerr(SSL_F_SSL_DO_CONFIG, SSL_R_UNKNOWN_COMMAND);
            else
                SSLerr(SSL_F_SSL_DO_CONFIG, SSL_R_BAD_VALUE);
            ERR_add_error_data(6, "section=", name, ", cmd=", cmdstr,
                               ", arg=", arg);
            goto err;
        }
    }
    rv = SSL_CONF_CTX_finish(cctx);
 err:
    SSL_CONF_CTX_free(cctx);
    return rv <= 0 ? 0 : 1;
}
