
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;
typedef int EVP_MD ;


 int EC_F_PKEY_EC_CTRL_STR ;
 int EC_R_INVALID_CURVE ;
 int EC_R_INVALID_DIGEST ;
 int EC_curve_nist2nid (char const*) ;
 int ECerr (int ,int ) ;
 int EVP_PKEY_CTX_set_ec_param_enc (int *,int) ;
 int EVP_PKEY_CTX_set_ec_paramgen_curve_nid (int *,int) ;
 int EVP_PKEY_CTX_set_ecdh_cofactor_mode (int *,int) ;
 int EVP_PKEY_CTX_set_ecdh_kdf_md (int *,int const*) ;
 int * EVP_get_digestbyname (char const*) ;
 int NID_undef ;
 int OBJ_ln2nid (char const*) ;
 int OBJ_sn2nid (char const*) ;
 int OPENSSL_EC_NAMED_CURVE ;
 int atoi (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int pkey_ec_ctrl_str(EVP_PKEY_CTX *ctx,
                            const char *type, const char *value)
{
    if (strcmp(type, "ec_paramgen_curve") == 0) {
        int nid;
        nid = EC_curve_nist2nid(value);
        if (nid == NID_undef)
            nid = OBJ_sn2nid(value);
        if (nid == NID_undef)
            nid = OBJ_ln2nid(value);
        if (nid == NID_undef) {
            ECerr(EC_F_PKEY_EC_CTRL_STR, EC_R_INVALID_CURVE);
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
    } else if (strcmp(type, "ecdh_kdf_md") == 0) {
        const EVP_MD *md;
        if ((md = EVP_get_digestbyname(value)) == ((void*)0)) {
            ECerr(EC_F_PKEY_EC_CTRL_STR, EC_R_INVALID_DIGEST);
            return 0;
        }
        return EVP_PKEY_CTX_set_ecdh_kdf_md(ctx, md);
    } else if (strcmp(type, "ecdh_cofactor_mode") == 0) {
        int co_mode;
        co_mode = atoi(value);
        return EVP_PKEY_CTX_set_ecdh_cofactor_mode(ctx, co_mode);
    }

    return -2;
}
