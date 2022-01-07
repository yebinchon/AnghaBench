
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_7__* seed; int b; int a; } ;
typedef TYPE_1__ X9_62_CURVE ;
struct TYPE_12__ {int flags; } ;
struct TYPE_11__ {scalar_t__ seed_len; scalar_t__ seed; } ;
typedef TYPE_2__ EC_GROUP ;
typedef int BIGNUM ;


 int ASN1_BIT_STRING_free (TYPE_7__*) ;
 TYPE_7__* ASN1_BIT_STRING_new () ;
 int ASN1_BIT_STRING_set (TYPE_7__*,scalar_t__,int) ;
 int ASN1_OCTET_STRING_set (int ,unsigned char*,size_t) ;
 int ASN1_STRING_FLAG_BITS_LEFT ;
 scalar_t__ BN_bn2binpad (int *,unsigned char*,size_t) ;
 int BN_free (int *) ;
 int * BN_new () ;
 int EC_F_EC_ASN1_GROUP2CURVE ;
 int EC_GROUP_get_curve (TYPE_2__ const*,int *,int *,int *,int *) ;
 scalar_t__ EC_GROUP_get_degree (TYPE_2__ const*) ;
 int ECerr (int ,int ) ;
 int ERR_R_ASN1_LIB ;
 int ERR_R_BN_LIB ;
 int ERR_R_EC_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;

__attribute__((used)) static int ec_asn1_group2curve(const EC_GROUP *group, X9_62_CURVE *curve)
{
    int ok = 0;
    BIGNUM *tmp_1 = ((void*)0), *tmp_2 = ((void*)0);
    unsigned char *a_buf = ((void*)0), *b_buf = ((void*)0);
    size_t len;

    if (!group || !curve || !curve->a || !curve->b)
        return 0;

    if ((tmp_1 = BN_new()) == ((void*)0) || (tmp_2 = BN_new()) == ((void*)0)) {
        ECerr(EC_F_EC_ASN1_GROUP2CURVE, ERR_R_MALLOC_FAILURE);
        goto err;
    }


    if (!EC_GROUP_get_curve(group, ((void*)0), tmp_1, tmp_2, ((void*)0))) {
        ECerr(EC_F_EC_ASN1_GROUP2CURVE, ERR_R_EC_LIB);
        goto err;
    }






    len = ((size_t)EC_GROUP_get_degree(group) + 7) / 8;
    if ((a_buf = OPENSSL_malloc(len)) == ((void*)0)
        || (b_buf = OPENSSL_malloc(len)) == ((void*)0)) {
        ECerr(EC_F_EC_ASN1_GROUP2CURVE, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    if (BN_bn2binpad(tmp_1, a_buf, len) < 0
        || BN_bn2binpad(tmp_2, b_buf, len) < 0) {
        ECerr(EC_F_EC_ASN1_GROUP2CURVE, ERR_R_BN_LIB);
        goto err;
    }


    if (!ASN1_OCTET_STRING_set(curve->a, a_buf, len)
        || !ASN1_OCTET_STRING_set(curve->b, b_buf, len)) {
        ECerr(EC_F_EC_ASN1_GROUP2CURVE, ERR_R_ASN1_LIB);
        goto err;
    }


    if (group->seed) {
        if (!curve->seed)
            if ((curve->seed = ASN1_BIT_STRING_new()) == ((void*)0)) {
                ECerr(EC_F_EC_ASN1_GROUP2CURVE, ERR_R_MALLOC_FAILURE);
                goto err;
            }
        curve->seed->flags &= ~(ASN1_STRING_FLAG_BITS_LEFT | 0x07);
        curve->seed->flags |= ASN1_STRING_FLAG_BITS_LEFT;
        if (!ASN1_BIT_STRING_set(curve->seed, group->seed,
                                 (int)group->seed_len)) {
            ECerr(EC_F_EC_ASN1_GROUP2CURVE, ERR_R_ASN1_LIB);
            goto err;
        }
    } else {
        ASN1_BIT_STRING_free(curve->seed);
        curve->seed = ((void*)0);
    }

    ok = 1;

 err:
    OPENSSL_free(a_buf);
    OPENSSL_free(b_buf);
    BN_free(tmp_1);
    BN_free(tmp_2);
    return ok;
}
