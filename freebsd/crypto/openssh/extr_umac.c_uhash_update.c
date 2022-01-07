
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* uhash_ctx_t ;
typedef int u_char ;
typedef long UWORD ;
typedef int UINT8 ;
typedef int UINT64 ;
typedef int UINT32 ;
struct TYPE_4__ {long msg_len; int hash; } ;


 long L1_KEY_LEN ;
 int STREAMS ;
 int nh (int *,int const*,long,long,int *) ;
 int nh_final (int *,int *) ;
 int nh_update (int *,int const*,long) ;
 int poly_hash (TYPE_1__*,int *) ;

__attribute__((used)) static int uhash_update(uhash_ctx_t ctx, const u_char *input, long len)



{
    UWORD bytes_hashed, bytes_remaining;
    UINT64 result_buf[STREAMS];
    UINT8 *nh_result = (UINT8 *)&result_buf;

    if (ctx->msg_len + len <= L1_KEY_LEN) {
        nh_update(&ctx->hash, (const UINT8 *)input, len);
        ctx->msg_len += len;
    } else {

         bytes_hashed = ctx->msg_len % L1_KEY_LEN;
         if (ctx->msg_len == L1_KEY_LEN)
             bytes_hashed = L1_KEY_LEN;

         if (bytes_hashed + len >= L1_KEY_LEN) {




             if (bytes_hashed) {
                 bytes_remaining = (L1_KEY_LEN - bytes_hashed);
                 nh_update(&ctx->hash, (const UINT8 *)input, bytes_remaining);
                 nh_final(&ctx->hash, nh_result);
                 ctx->msg_len += bytes_remaining;
                 poly_hash(ctx,(UINT32 *)nh_result);
                 len -= bytes_remaining;
                 input += bytes_remaining;
             }


             while (len >= L1_KEY_LEN) {
                 nh(&ctx->hash, (const UINT8 *)input, L1_KEY_LEN,
                                   L1_KEY_LEN, nh_result);
                 ctx->msg_len += L1_KEY_LEN;
                 len -= L1_KEY_LEN;
                 input += L1_KEY_LEN;
                 poly_hash(ctx,(UINT32 *)nh_result);
             }
         }


         if (len) {
             nh_update(&ctx->hash, (const UINT8 *)input, len);
             ctx->msg_len += len;
         }
     }

    return (1);
}
