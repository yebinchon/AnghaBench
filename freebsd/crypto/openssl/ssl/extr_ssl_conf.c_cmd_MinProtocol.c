
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int min_version; } ;
typedef TYPE_1__ SSL_CONF_CTX ;


 int min_max_proto (TYPE_1__*,char const*,int ) ;

__attribute__((used)) static int cmd_MinProtocol(SSL_CONF_CTX *cctx, const char *value)
{
    return min_max_proto(cctx, value, cctx->min_version);
}
