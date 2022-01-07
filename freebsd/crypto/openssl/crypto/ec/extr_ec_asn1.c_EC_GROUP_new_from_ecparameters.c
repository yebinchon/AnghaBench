
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_9__ ;
typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;
typedef struct TYPE_30__ TYPE_12__ ;
typedef struct TYPE_29__ TYPE_11__ ;
typedef struct TYPE_28__ TYPE_10__ ;


typedef int point_conversion_form_t ;
struct TYPE_39__ {scalar_t__ k3; scalar_t__ k2; scalar_t__ k1; } ;
typedef TYPE_9__ X9_62_PENTANOMIAL ;
struct TYPE_38__ {TYPE_9__* ppBasis; int tpBasis; } ;
struct TYPE_28__ {long m; TYPE_8__ p; int type; } ;
typedef TYPE_10__ X9_62_CHARACTERISTIC_TWO ;
struct TYPE_36__ {int * prime; TYPE_10__* char_two; int ptr; } ;
struct TYPE_37__ {TYPE_6__ p; int fieldType; } ;
struct TYPE_35__ {TYPE_1__* seed; TYPE_4__* b; TYPE_3__* a; } ;
struct TYPE_34__ {int length; int data; } ;
struct TYPE_33__ {int length; int data; } ;
struct TYPE_32__ {int* data; int length; } ;
struct TYPE_31__ {int length; int data; } ;
struct TYPE_30__ {int * cofactor; int * order; TYPE_2__* base; TYPE_5__* curve; TYPE_7__* fieldID; } ;
struct TYPE_29__ {int seed_len; int * seed; } ;
typedef int EC_POINT ;
typedef TYPE_11__ EC_GROUP ;
typedef TYPE_12__ ECPARAMETERS ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 long ASN1_INTEGER_get (int ) ;
 int * ASN1_INTEGER_to_BN (int *,int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int * BN_bin2bn (int ,int ,int *) ;
 int BN_free (int *) ;
 scalar_t__ BN_is_negative (int *) ;
 scalar_t__ BN_is_zero (int *) ;
 int * BN_new () ;
 int BN_num_bits (int *) ;
 int BN_set_bit (int *,int) ;
 int EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS ;
 TYPE_11__* EC_GROUP_dup (TYPE_11__*) ;
 int EC_GROUP_free (TYPE_11__*) ;
 TYPE_11__* EC_GROUP_new_by_curve_name (int) ;
 TYPE_11__* EC_GROUP_new_curve_GF2m (int *,int *,int *,int *) ;
 TYPE_11__* EC_GROUP_new_curve_GFp (int *,int *,int *,int *) ;
 int EC_GROUP_set_asn1_flag (TYPE_11__*,int ) ;
 int EC_GROUP_set_generator (TYPE_11__*,int *,int *,int *) ;
 int EC_GROUP_set_point_conversion_form (TYPE_11__*,int ) ;
 int EC_GROUP_set_seed (TYPE_11__*,int *,int ) ;
 int EC_POINT_free (int *) ;
 int * EC_POINT_new (TYPE_11__*) ;
 int EC_POINT_oct2point (TYPE_11__*,int *,int*,int ,int *) ;
 int EC_R_ASN1_ERROR ;
 int EC_R_FIELD_TOO_LARGE ;
 int EC_R_GF2M_NOT_SUPPORTED ;
 int EC_R_INVALID_FIELD ;
 int EC_R_INVALID_GROUP_ORDER ;
 int EC_R_INVALID_PENTANOMIAL_BASIS ;
 int EC_R_INVALID_TRINOMIAL_BASIS ;
 int EC_R_NOT_IMPLEMENTED ;
 int ECerr (int ,int ) ;
 int ERR_R_ASN1_LIB ;
 int ERR_R_BN_LIB ;
 int ERR_R_EC_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int NID_X9_62_characteristic_two_field ;
 int NID_X9_62_onBasis ;
 int NID_X9_62_ppBasis ;
 int NID_X9_62_prime_field ;
 int NID_X9_62_tpBasis ;
 int NID_secp224r1 ;
 int NID_undef ;
 int NID_wap_wsg_idm_ecid_wtls12 ;
 int OBJ_obj2nid (int ) ;
 long OPENSSL_ECC_MAX_FIELD_BITS ;
 int OPENSSL_EC_EXPLICIT_CURVE ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_malloc (int ) ;
 int ec_curve_nid_from_params (TYPE_11__*,int *) ;
 int memcpy (int *,int ,int ) ;

EC_GROUP *EC_GROUP_new_from_ecparameters(const ECPARAMETERS *params)
{
    int ok = 0, tmp;
    EC_GROUP *ret = ((void*)0), *dup = ((void*)0);
    BIGNUM *p = ((void*)0), *a = ((void*)0), *b = ((void*)0);
    EC_POINT *point = ((void*)0);
    long field_bits;
    int curve_name = NID_undef;
    BN_CTX *ctx = ((void*)0);

    if (!params->fieldID || !params->fieldID->fieldType ||
        !params->fieldID->p.ptr) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, EC_R_ASN1_ERROR);
        goto err;
    }







    if (!params->curve || !params->curve->a ||
        !params->curve->a->data || !params->curve->b ||
        !params->curve->b->data) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, EC_R_ASN1_ERROR);
        goto err;
    }
    a = BN_bin2bn(params->curve->a->data, params->curve->a->length, ((void*)0));
    if (a == ((void*)0)) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, ERR_R_BN_LIB);
        goto err;
    }
    b = BN_bin2bn(params->curve->b->data, params->curve->b->length, ((void*)0));
    if (b == ((void*)0)) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, ERR_R_BN_LIB);
        goto err;
    }


    tmp = OBJ_obj2nid(params->fieldID->fieldType);
    if (tmp == NID_X9_62_characteristic_two_field)






    {
        X9_62_CHARACTERISTIC_TWO *char_two;

        char_two = params->fieldID->p.char_two;

        field_bits = char_two->m;
        if (field_bits > OPENSSL_ECC_MAX_FIELD_BITS) {
            ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, EC_R_FIELD_TOO_LARGE);
            goto err;
        }

        if ((p = BN_new()) == ((void*)0)) {
            ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, ERR_R_MALLOC_FAILURE);
            goto err;
        }


        tmp = OBJ_obj2nid(char_two->type);

        if (tmp == NID_X9_62_tpBasis) {
            long tmp_long;

            if (!char_two->p.tpBasis) {
                ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, EC_R_ASN1_ERROR);
                goto err;
            }

            tmp_long = ASN1_INTEGER_get(char_two->p.tpBasis);

            if (!(char_two->m > tmp_long && tmp_long > 0)) {
                ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS,
                      EC_R_INVALID_TRINOMIAL_BASIS);
                goto err;
            }


            if (!BN_set_bit(p, (int)char_two->m))
                goto err;
            if (!BN_set_bit(p, (int)tmp_long))
                goto err;
            if (!BN_set_bit(p, 0))
                goto err;
        } else if (tmp == NID_X9_62_ppBasis) {
            X9_62_PENTANOMIAL *penta;

            penta = char_two->p.ppBasis;
            if (!penta) {
                ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, EC_R_ASN1_ERROR);
                goto err;
            }

            if (!
                (char_two->m > penta->k3 && penta->k3 > penta->k2
                 && penta->k2 > penta->k1 && penta->k1 > 0)) {
                ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS,
                      EC_R_INVALID_PENTANOMIAL_BASIS);
                goto err;
            }


            if (!BN_set_bit(p, (int)char_two->m))
                goto err;
            if (!BN_set_bit(p, (int)penta->k1))
                goto err;
            if (!BN_set_bit(p, (int)penta->k2))
                goto err;
            if (!BN_set_bit(p, (int)penta->k3))
                goto err;
            if (!BN_set_bit(p, 0))
                goto err;
        } else if (tmp == NID_X9_62_onBasis) {
            ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, EC_R_NOT_IMPLEMENTED);
            goto err;
        } else {

            ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, EC_R_ASN1_ERROR);
            goto err;
        }


        ret = EC_GROUP_new_curve_GF2m(p, a, b, ((void*)0));
    }

    else if (tmp == NID_X9_62_prime_field) {


        if (!params->fieldID->p.prime) {
            ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, EC_R_ASN1_ERROR);
            goto err;
        }
        p = ASN1_INTEGER_to_BN(params->fieldID->p.prime, ((void*)0));
        if (p == ((void*)0)) {
            ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, ERR_R_ASN1_LIB);
            goto err;
        }

        if (BN_is_negative(p) || BN_is_zero(p)) {
            ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, EC_R_INVALID_FIELD);
            goto err;
        }

        field_bits = BN_num_bits(p);
        if (field_bits > OPENSSL_ECC_MAX_FIELD_BITS) {
            ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, EC_R_FIELD_TOO_LARGE);
            goto err;
        }


        ret = EC_GROUP_new_curve_GFp(p, a, b, ((void*)0));
    } else {
        ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, EC_R_INVALID_FIELD);
        goto err;
    }

    if (ret == ((void*)0)) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, ERR_R_EC_LIB);
        goto err;
    }


    if (params->curve->seed != ((void*)0)) {
        OPENSSL_free(ret->seed);
        if ((ret->seed = OPENSSL_malloc(params->curve->seed->length)) == ((void*)0)) {
            ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        memcpy(ret->seed, params->curve->seed->data,
               params->curve->seed->length);
        ret->seed_len = params->curve->seed->length;
    }

    if (!params->order || !params->base || !params->base->data) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, EC_R_ASN1_ERROR);
        goto err;
    }

    if ((point = EC_POINT_new(ret)) == ((void*)0))
        goto err;


    EC_GROUP_set_point_conversion_form(ret, (point_conversion_form_t)
                                       (params->base->data[0] & ~0x01));


    if (!EC_POINT_oct2point(ret, point, params->base->data,
                            params->base->length, ((void*)0))) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, ERR_R_EC_LIB);
        goto err;
    }


    if ((a = ASN1_INTEGER_to_BN(params->order, a)) == ((void*)0)) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, ERR_R_ASN1_LIB);
        goto err;
    }
    if (BN_is_negative(a) || BN_is_zero(a)) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, EC_R_INVALID_GROUP_ORDER);
        goto err;
    }
    if (BN_num_bits(a) > (int)field_bits + 1) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, EC_R_INVALID_GROUP_ORDER);
        goto err;
    }


    if (params->cofactor == ((void*)0)) {
        BN_free(b);
        b = ((void*)0);
    } else if ((b = ASN1_INTEGER_to_BN(params->cofactor, b)) == ((void*)0)) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, ERR_R_ASN1_LIB);
        goto err;
    }

    if (!EC_GROUP_set_generator(ret, point, a, b)) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, ERR_R_EC_LIB);
        goto err;
    }
    if ((ctx = BN_CTX_new()) == ((void*)0)) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, ERR_R_BN_LIB);
        goto err;
    }
    if ((dup = EC_GROUP_dup(ret)) == ((void*)0)
            || EC_GROUP_set_seed(dup, ((void*)0), 0) != 1
            || !EC_GROUP_set_generator(dup, point, a, ((void*)0))) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, ERR_R_EC_LIB);
        goto err;
    }
    if ((curve_name = ec_curve_nid_from_params(dup, ctx)) != NID_undef) {
        EC_GROUP *named_group = ((void*)0);







        if (curve_name == NID_wap_wsg_idm_ecid_wtls12)
            curve_name = NID_secp224r1;


        if ((named_group = EC_GROUP_new_by_curve_name(curve_name)) == ((void*)0)) {
            ECerr(EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS, ERR_R_EC_LIB);
            goto err;
        }
        EC_GROUP_free(ret);
        ret = named_group;





        EC_GROUP_set_asn1_flag(ret, OPENSSL_EC_EXPLICIT_CURVE);
    }

    ok = 1;

 err:
    if (!ok) {
        EC_GROUP_free(ret);
        ret = ((void*)0);
    }
    EC_GROUP_free(dup);

    BN_free(p);
    BN_free(a);
    BN_free(b);
    EC_POINT_free(point);

    BN_CTX_free(ctx);

    return ret;
}
