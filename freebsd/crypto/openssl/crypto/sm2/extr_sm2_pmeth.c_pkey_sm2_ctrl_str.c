
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;


 int EC_curve_nist2nid (char const*) ;
 int EVP_PKEY_CTX_set_ec_param_enc (int *,int) ;
 int EVP_PKEY_CTX_set_ec_paramgen_curve_nid (int *,int) ;
 int NID_undef ;
 int OBJ_ln2nid (char const*) ;
 int OBJ_sn2nid (char const*) ;
 int OPENSSL_EC_NAMED_CURVE ;
 int SM2_F_PKEY_SM2_CTRL_STR ;
 int SM2_R_INVALID_CURVE ;
 int SM2err (int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int pkey_sm2_ctrl_str(EVP_PKEY_CTX *ctx,
                             const char *type, const char *value)
{
    if (strcmp(type, "ec_paramgen_curve") == 0) {
        int nid = NID_undef;

        if (((nid = EC_curve_nist2nid(value)) == NID_undef)
            && ((nid = OBJ_sn2nid(value)) == NID_undef)
            && ((nid = OBJ_ln2nid(value)) == NID_undef)) {
            SM2err(SM2_F_PKEY_SM2_CTRL_STR, SM2_R_INVALID_CURVE);
            return 0;
        }
        return EVP_PKEY_CTX_set_ec_paramgen_curve_nid(ctx, nid);
    } else if (strcmp(type, "ec_param_enc") == 0) {
        int param_enc;

        if (strcmp(value, "explicit") == 0)
            param_enc = 0;
        else if (strcmp(value, "named_curve") == 0)
            param_enc = OPENSSL_EC_NAMED_CURVE;
        else
            return -2;
        return EVP_PKEY_CTX_set_ec_param_enc(ctx, param_enc);
    }

    return -2;
}
