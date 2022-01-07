
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ str_file; scalar_t__ str_cmdline; } ;
typedef TYPE_1__ ssl_conf_cmd_tbl ;
struct TYPE_10__ {int flags; } ;
typedef TYPE_2__ SSL_CONF_CTX ;


 size_t OSSL_NELEM (TYPE_1__*) ;
 int SSL_CONF_FLAG_CMDLINE ;
 int SSL_CONF_FLAG_FILE ;
 scalar_t__ ssl_conf_cmd_allowed (TYPE_2__*,TYPE_1__ const*) ;
 TYPE_1__* ssl_conf_cmds ;
 scalar_t__ strcasecmp (scalar_t__,char const*) ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

__attribute__((used)) static const ssl_conf_cmd_tbl *ssl_conf_cmd_lookup(SSL_CONF_CTX *cctx,
                                                   const char *cmd)
{
    const ssl_conf_cmd_tbl *t;
    size_t i;
    if (cmd == ((void*)0))
        return ((void*)0);


    for (i = 0, t = ssl_conf_cmds; i < OSSL_NELEM(ssl_conf_cmds); i++, t++) {
        if (ssl_conf_cmd_allowed(cctx, t)) {
            if (cctx->flags & SSL_CONF_FLAG_CMDLINE) {
                if (t->str_cmdline && strcmp(t->str_cmdline, cmd) == 0)
                    return t;
            }
            if (cctx->flags & SSL_CONF_FLAG_FILE) {
                if (t->str_file && strcasecmp(t->str_file, cmd) == 0)
                    return t;
            }
        }
    }
    return ((void*)0);
}
