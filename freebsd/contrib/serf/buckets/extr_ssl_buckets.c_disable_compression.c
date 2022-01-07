
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; } ;
typedef TYPE_1__ serf_ssl_context_t ;


 int SSL_CTX_set_options (int ,int ) ;
 int SSL_OP_NO_COMPRESSION ;

__attribute__((used)) static void disable_compression(serf_ssl_context_t *ssl_ctx)
{



}
