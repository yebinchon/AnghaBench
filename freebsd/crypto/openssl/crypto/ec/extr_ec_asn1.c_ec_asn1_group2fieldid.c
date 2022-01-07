
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* char_two; int * prime; int other; } ;
struct TYPE_10__ {TYPE_1__ p; int * fieldType; } ;
typedef TYPE_3__ X9_62_FIELDID ;
struct TYPE_9__ {int * onBasis; TYPE_6__* ppBasis; int * tpBasis; } ;
struct TYPE_11__ {long m; TYPE_2__ p; int * type; } ;
typedef TYPE_4__ X9_62_CHARACTERISTIC_TWO ;
struct TYPE_12__ {long k1; long k2; long k3; } ;
typedef int EC_GROUP ;
typedef int BIGNUM ;


 int * ASN1_INTEGER_new () ;
 int ASN1_INTEGER_set (int *,long) ;
 int * ASN1_NULL_new () ;
 int ASN1_OBJECT_free (int *) ;
 int ASN1_TYPE_free (int ) ;
 int BN_free (int *) ;
 int * BN_new () ;
 int * BN_to_ASN1_INTEGER (int *,int *) ;
 int EC_F_EC_ASN1_GROUP2FIELDID ;
 int EC_GROUP_get_basis_type (int const*) ;
 int EC_GROUP_get_curve (int const*,int *,int *,int *,int *) ;
 scalar_t__ EC_GROUP_get_degree (int const*) ;
 int EC_GROUP_get_pentanomial_basis (int const*,unsigned int*,unsigned int*,unsigned int*) ;
 int EC_GROUP_get_trinomial_basis (int const*,unsigned int*) ;
 int EC_GROUP_method_of (int const*) ;
 int EC_METHOD_get_field_type (int ) ;
 int EC_R_GF2M_NOT_SUPPORTED ;
 int EC_R_UNSUPPORTED_FIELD ;
 int ECerr (int ,int ) ;
 int ERR_R_ASN1_LIB ;
 int ERR_R_EC_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_OBJ_LIB ;
 int NID_X9_62_characteristic_two_field ;
 int NID_X9_62_ppBasis ;
 int NID_X9_62_prime_field ;
 int NID_X9_62_tpBasis ;
 void* OBJ_nid2obj (int) ;
 TYPE_4__* X9_62_CHARACTERISTIC_TWO_new () ;
 TYPE_6__* X9_62_PENTANOMIAL_new () ;

__attribute__((used)) static int ec_asn1_group2fieldid(const EC_GROUP *group, X9_62_FIELDID *field)
{
    int ok = 0, nid;
    BIGNUM *tmp = ((void*)0);

    if (group == ((void*)0) || field == ((void*)0))
        return 0;


    ASN1_OBJECT_free(field->fieldType);
    ASN1_TYPE_free(field->p.other);

    nid = EC_METHOD_get_field_type(EC_GROUP_method_of(group));

    if ((field->fieldType = OBJ_nid2obj(nid)) == ((void*)0)) {
        ECerr(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_OBJ_LIB);
        goto err;
    }

    if (nid == NID_X9_62_prime_field) {
        if ((tmp = BN_new()) == ((void*)0)) {
            ECerr(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_MALLOC_FAILURE);
            goto err;
        }

        if (!EC_GROUP_get_curve(group, tmp, ((void*)0), ((void*)0), ((void*)0))) {
            ECerr(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_EC_LIB);
            goto err;
        }

        field->p.prime = BN_to_ASN1_INTEGER(tmp, ((void*)0));
        if (field->p.prime == ((void*)0)) {
            ECerr(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_ASN1_LIB);
            goto err;
        }
    } else if (nid == NID_X9_62_characteristic_two_field)






    {
        int field_type;
        X9_62_CHARACTERISTIC_TWO *char_two;

        field->p.char_two = X9_62_CHARACTERISTIC_TWO_new();
        char_two = field->p.char_two;

        if (char_two == ((void*)0)) {
            ECerr(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_MALLOC_FAILURE);
            goto err;
        }

        char_two->m = (long)EC_GROUP_get_degree(group);

        field_type = EC_GROUP_get_basis_type(group);

        if (field_type == 0) {
            ECerr(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_EC_LIB);
            goto err;
        }

        if ((char_two->type = OBJ_nid2obj(field_type)) == ((void*)0)) {
            ECerr(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_OBJ_LIB);
            goto err;
        }

        if (field_type == NID_X9_62_tpBasis) {
            unsigned int k;

            if (!EC_GROUP_get_trinomial_basis(group, &k))
                goto err;

            char_two->p.tpBasis = ASN1_INTEGER_new();
            if (char_two->p.tpBasis == ((void*)0)) {
                ECerr(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_MALLOC_FAILURE);
                goto err;
            }
            if (!ASN1_INTEGER_set(char_two->p.tpBasis, (long)k)) {
                ECerr(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_ASN1_LIB);
                goto err;
            }
        } else if (field_type == NID_X9_62_ppBasis) {
            unsigned int k1, k2, k3;

            if (!EC_GROUP_get_pentanomial_basis(group, &k1, &k2, &k3))
                goto err;

            char_two->p.ppBasis = X9_62_PENTANOMIAL_new();
            if (char_two->p.ppBasis == ((void*)0)) {
                ECerr(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_MALLOC_FAILURE);
                goto err;
            }


            char_two->p.ppBasis->k1 = (long)k1;
            char_two->p.ppBasis->k2 = (long)k2;
            char_two->p.ppBasis->k3 = (long)k3;
        } else {


            char_two->p.onBasis = ASN1_NULL_new();
            if (char_two->p.onBasis == ((void*)0)) {
                ECerr(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_MALLOC_FAILURE);
                goto err;
            }
        }
    }

    else {
        ECerr(EC_F_EC_ASN1_GROUP2FIELDID, EC_R_UNSUPPORTED_FIELD);
        goto err;
    }

    ok = 1;

 err:
    BN_free(tmp);
    return ok;
}
