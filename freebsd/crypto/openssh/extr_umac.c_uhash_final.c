
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* uhash_ctx_t ;
typedef int u_char ;
typedef int UINT8 ;
typedef int UINT64 ;
typedef int UINT32 ;
struct TYPE_7__ {int msg_len; int hash; } ;


 int L1_KEY_LEN ;
 int STREAMS ;
 int ip_long (TYPE_1__*,int *) ;
 int ip_short (TYPE_1__*,int *,int *) ;
 int nh_final (int *,int *) ;
 int poly_hash (TYPE_1__*,int *) ;
 int uhash_reset (TYPE_1__*) ;

__attribute__((used)) static int uhash_final(uhash_ctx_t ctx, u_char *res)

{
    UINT64 result_buf[STREAMS];
    UINT8 *nh_result = (UINT8 *)&result_buf;

    if (ctx->msg_len > L1_KEY_LEN) {
        if (ctx->msg_len % L1_KEY_LEN) {
            nh_final(&ctx->hash, nh_result);
            poly_hash(ctx,(UINT32 *)nh_result);
        }
        ip_long(ctx, res);
    } else {
        nh_final(&ctx->hash, nh_result);
        ip_short(ctx,nh_result, res);
    }
    uhash_reset(ctx);
    return (1);
}
