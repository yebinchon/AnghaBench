
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int flags; } ;
typedef TYPE_1__ ssl_conf_cmd_tbl ;
struct TYPE_6__ {unsigned int flags; } ;
typedef TYPE_2__ SSL_CONF_CTX ;


 unsigned int SSL_CONF_FLAG_CERTIFICATE ;
 unsigned int SSL_CONF_FLAG_CLIENT ;
 unsigned int SSL_CONF_FLAG_SERVER ;

__attribute__((used)) static int ssl_conf_cmd_allowed(SSL_CONF_CTX *cctx, const ssl_conf_cmd_tbl * t)
{
    unsigned int tfl = t->flags;
    unsigned int cfl = cctx->flags;
    if ((tfl & SSL_CONF_FLAG_SERVER) && !(cfl & SSL_CONF_FLAG_SERVER))
        return 0;
    if ((tfl & SSL_CONF_FLAG_CLIENT) && !(cfl & SSL_CONF_FLAG_CLIENT))
        return 0;
    if ((tfl & SSL_CONF_FLAG_CERTIFICATE)
        && !(cfl & SSL_CONF_FLAG_CERTIFICATE))
        return 0;
    return 1;
}
