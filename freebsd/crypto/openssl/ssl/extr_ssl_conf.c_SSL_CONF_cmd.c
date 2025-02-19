
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ value_type; int (* cmd ) (TYPE_2__*,char const*) ;} ;
typedef TYPE_1__ ssl_conf_cmd_tbl ;
struct TYPE_11__ {int flags; } ;
typedef TYPE_2__ SSL_CONF_CTX ;


 int ERR_add_error_data (int,char*,char const*,...) ;
 int SSL_CONF_FLAG_SHOW_ERRORS ;
 scalar_t__ SSL_CONF_TYPE_NONE ;
 int SSL_F_SSL_CONF_CMD ;
 int SSL_R_BAD_VALUE ;
 int SSL_R_INVALID_NULL_CMD_NAME ;
 int SSL_R_UNKNOWN_CMD_NAME ;
 int SSLerr (int ,int ) ;
 int ctrl_switch_option (TYPE_2__*,TYPE_1__ const*) ;
 TYPE_1__* ssl_conf_cmd_lookup (TYPE_2__*,char const*) ;
 int ssl_conf_cmd_skip_prefix (TYPE_2__*,char const**) ;
 int stub1 (TYPE_2__*,char const*) ;

int SSL_CONF_cmd(SSL_CONF_CTX *cctx, const char *cmd, const char *value)
{
    const ssl_conf_cmd_tbl *runcmd;
    if (cmd == ((void*)0)) {
        SSLerr(SSL_F_SSL_CONF_CMD, SSL_R_INVALID_NULL_CMD_NAME);
        return 0;
    }

    if (!ssl_conf_cmd_skip_prefix(cctx, &cmd))
        return -2;

    runcmd = ssl_conf_cmd_lookup(cctx, cmd);

    if (runcmd) {
        int rv;
        if (runcmd->value_type == SSL_CONF_TYPE_NONE) {
            return ctrl_switch_option(cctx, runcmd);
        }
        if (value == ((void*)0))
            return -3;
        rv = runcmd->cmd(cctx, value);
        if (rv > 0)
            return 2;
        if (rv == -2)
            return -2;
        if (cctx->flags & SSL_CONF_FLAG_SHOW_ERRORS) {
            SSLerr(SSL_F_SSL_CONF_CMD, SSL_R_BAD_VALUE);
            ERR_add_error_data(4, "cmd=", cmd, ", value=", value);
        }
        return 0;
    }

    if (cctx->flags & SSL_CONF_FLAG_SHOW_ERRORS) {
        SSLerr(SSL_F_SSL_CONF_CMD, SSL_R_UNKNOWN_CMD_NAME);
        ERR_add_error_data(2, "cmd=", cmd);
    }

    return -2;
}
