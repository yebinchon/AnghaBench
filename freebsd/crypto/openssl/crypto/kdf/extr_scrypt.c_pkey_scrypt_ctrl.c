
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {int N; int r; int p; int maxmem_bytes; int salt_len; int salt; int pass_len; int pass; } ;
typedef TYPE_1__ SCRYPT_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;
 int is_power_of_two (int) ;
 int pkey_scrypt_set_membuf (int *,int *,void*,int) ;

__attribute__((used)) static int pkey_scrypt_ctrl(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{
    SCRYPT_PKEY_CTX *kctx = ctx->data;
    uint64_t u64_value;

    switch (type) {
    case 133:
        return pkey_scrypt_set_membuf(&kctx->pass, &kctx->pass_len, p2, p1);

    case 128:
        return pkey_scrypt_set_membuf(&kctx->salt, &kctx->salt_len, p2, p1);

    case 131:
        u64_value = *((uint64_t *)p2);
        if ((u64_value <= 1) || !is_power_of_two(u64_value))
            return 0;
        kctx->N = u64_value;
        return 1;

    case 129:
        u64_value = *((uint64_t *)p2);
        if (u64_value < 1)
            return 0;
        kctx->r = u64_value;
        return 1;

    case 130:
        u64_value = *((uint64_t *)p2);
        if (u64_value < 1)
            return 0;
        kctx->p = u64_value;
        return 1;

    case 132:
        u64_value = *((uint64_t *)p2);
        if (u64_value < 1)
            return 0;
        kctx->maxmem_bytes = u64_value;
        return 1;

    default:
        return -2;

    }
}
