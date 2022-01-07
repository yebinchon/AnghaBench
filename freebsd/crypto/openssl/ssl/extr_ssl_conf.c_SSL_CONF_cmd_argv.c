
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ SSL_CONF_CTX ;


 int SSL_CONF_FLAG_CMDLINE ;
 int SSL_CONF_FLAG_FILE ;
 int SSL_CONF_cmd (TYPE_1__*,char const*,char const*) ;

int SSL_CONF_cmd_argv(SSL_CONF_CTX *cctx, int *pargc, char ***pargv)
{
    int rv;
    const char *arg = ((void*)0), *argn;
    if (pargc && *pargc == 0)
        return 0;
    if (!pargc || *pargc > 0)
        arg = **pargv;
    if (arg == ((void*)0))
        return 0;
    if (!pargc || *pargc > 1)
        argn = (*pargv)[1];
    else
        argn = ((void*)0);
    cctx->flags &= ~SSL_CONF_FLAG_FILE;
    cctx->flags |= SSL_CONF_FLAG_CMDLINE;
    rv = SSL_CONF_cmd(cctx, arg, argn);
    if (rv > 0) {

        (*pargv) += rv;
        if (pargc)
            (*pargc) -= rv;
        return rv;
    }

    if (rv == -2)
        return 0;

    if (rv == 0)
        return -1;
    return rv;
}
