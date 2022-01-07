
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int kadm5_ret_t ;
struct TYPE_3__ {int sock; } ;
typedef TYPE_1__ kadm5_client_context ;


 int kadm_connect (TYPE_1__*) ;

kadm5_ret_t
_kadm5_connect(void *handle)
{
    kadm5_client_context *ctx = handle;
    if(ctx->sock == -1)
 return kadm_connect(ctx);
    return 0;
}
