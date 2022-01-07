
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ point_conversion_form_t ;
typedef int EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIO ;
typedef int const BIGNUM ;


 int ASN1_bn_print (int *,char const*,int const*,int *,int) ;
 int BIO_indent (int *,int,int) ;
 scalar_t__ BIO_printf (int *,char*,...) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_free (int const*) ;
 int const* BN_new () ;
 int EC_F_ECPKPARAMETERS_PRINT ;
 int const* EC_GROUP_get0_cofactor (int const*) ;
 int * EC_GROUP_get0_generator (int const*) ;
 int const* EC_GROUP_get0_order (int const*) ;
 unsigned char* EC_GROUP_get0_seed (int const*) ;
 scalar_t__ EC_GROUP_get_asn1_flag (int const*) ;
 int EC_GROUP_get_basis_type (int const*) ;
 int EC_GROUP_get_curve (int const*,int const*,int const*,int const*,int *) ;
 int EC_GROUP_get_curve_name (int const*) ;
 scalar_t__ EC_GROUP_get_point_conversion_form (int const*) ;
 size_t EC_GROUP_get_seed_len (int const*) ;
 int EC_GROUP_method_of (int const*) ;
 int EC_METHOD_get_field_type (int ) ;
 int const* EC_POINT_point2bn (int const*,int const*,scalar_t__,int *,int *) ;
 char* EC_curve_nid2nist (int) ;
 int ECerr (int ,int) ;
 int ERR_R_BIO_LIB ;
 int ERR_R_EC_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int NID_X9_62_characteristic_two_field ;
 char const* OBJ_nid2sn (int) ;
 scalar_t__ POINT_CONVERSION_COMPRESSED ;
 scalar_t__ POINT_CONVERSION_UNCOMPRESSED ;
 int print_bin (int *,char*,unsigned char const*,size_t,int) ;

int ECPKParameters_print(BIO *bp, const EC_GROUP *x, int off)
{
    int ret = 0, reason = ERR_R_BIO_LIB;
    BN_CTX *ctx = ((void*)0);
    const EC_POINT *point = ((void*)0);
    BIGNUM *p = ((void*)0), *a = ((void*)0), *b = ((void*)0), *gen = ((void*)0);
    const BIGNUM *order = ((void*)0), *cofactor = ((void*)0);
    const unsigned char *seed;
    size_t seed_len = 0;

    static const char *gen_compressed = "Generator (compressed):";
    static const char *gen_uncompressed = "Generator (uncompressed):";
    static const char *gen_hybrid = "Generator (hybrid):";

    if (!x) {
        reason = ERR_R_PASSED_NULL_PARAMETER;
        goto err;
    }

    ctx = BN_CTX_new();
    if (ctx == ((void*)0)) {
        reason = ERR_R_MALLOC_FAILURE;
        goto err;
    }

    if (EC_GROUP_get_asn1_flag(x)) {

        int nid;
        const char *nname;

        if (!BIO_indent(bp, off, 128))
            goto err;

        nid = EC_GROUP_get_curve_name(x);
        if (nid == 0)
            goto err;
        if (BIO_printf(bp, "ASN1 OID: %s", OBJ_nid2sn(nid)) <= 0)
            goto err;
        if (BIO_printf(bp, "\n") <= 0)
            goto err;
        nname = EC_curve_nid2nist(nid);
        if (nname) {
            if (!BIO_indent(bp, off, 128))
                goto err;
            if (BIO_printf(bp, "NIST CURVE: %s\n", nname) <= 0)
                goto err;
        }
    } else {

        int is_char_two = 0;
        point_conversion_form_t form;
        int tmp_nid = EC_METHOD_get_field_type(EC_GROUP_method_of(x));

        if (tmp_nid == NID_X9_62_characteristic_two_field)
            is_char_two = 1;

        if ((p = BN_new()) == ((void*)0) || (a = BN_new()) == ((void*)0) ||
            (b = BN_new()) == ((void*)0)) {
            reason = ERR_R_MALLOC_FAILURE;
            goto err;
        }

        if (!EC_GROUP_get_curve(x, p, a, b, ctx)) {
            reason = ERR_R_EC_LIB;
            goto err;
        }

        if ((point = EC_GROUP_get0_generator(x)) == ((void*)0)) {
            reason = ERR_R_EC_LIB;
            goto err;
        }
        order = EC_GROUP_get0_order(x);
        cofactor = EC_GROUP_get0_cofactor(x);
        if (order == ((void*)0)) {
            reason = ERR_R_EC_LIB;
            goto err;
        }

        form = EC_GROUP_get_point_conversion_form(x);

        if ((gen = EC_POINT_point2bn(x, point, form, ((void*)0), ctx)) == ((void*)0)) {
            reason = ERR_R_EC_LIB;
            goto err;
        }

        if ((seed = EC_GROUP_get0_seed(x)) != ((void*)0))
            seed_len = EC_GROUP_get_seed_len(x);

        if (!BIO_indent(bp, off, 128))
            goto err;


        if (BIO_printf(bp, "Field Type: %s\n", OBJ_nid2sn(tmp_nid))
            <= 0)
            goto err;

        if (is_char_two) {

            int basis_type = EC_GROUP_get_basis_type(x);
            if (basis_type == 0)
                goto err;

            if (!BIO_indent(bp, off, 128))
                goto err;

            if (BIO_printf(bp, "Basis Type: %s\n",
                           OBJ_nid2sn(basis_type)) <= 0)
                goto err;


            if ((p != ((void*)0)) && !ASN1_bn_print(bp, "Polynomial:", p, ((void*)0),
                                              off))
                goto err;
        } else {
            if ((p != ((void*)0)) && !ASN1_bn_print(bp, "Prime:", p, ((void*)0), off))
                goto err;
        }
        if ((a != ((void*)0)) && !ASN1_bn_print(bp, "A:   ", a, ((void*)0), off))
            goto err;
        if ((b != ((void*)0)) && !ASN1_bn_print(bp, "B:   ", b, ((void*)0), off))
            goto err;
        if (form == POINT_CONVERSION_COMPRESSED) {
            if ((gen != ((void*)0)) && !ASN1_bn_print(bp, gen_compressed, gen,
                                                ((void*)0), off))
                goto err;
        } else if (form == POINT_CONVERSION_UNCOMPRESSED) {
            if ((gen != ((void*)0)) && !ASN1_bn_print(bp, gen_uncompressed, gen,
                                                ((void*)0), off))
                goto err;
        } else {

            if ((gen != ((void*)0)) && !ASN1_bn_print(bp, gen_hybrid, gen,
                                                ((void*)0), off))
                goto err;
        }
        if ((order != ((void*)0)) && !ASN1_bn_print(bp, "Order: ", order,
                                              ((void*)0), off))
            goto err;
        if ((cofactor != ((void*)0)) && !ASN1_bn_print(bp, "Cofactor: ", cofactor,
                                                 ((void*)0), off))
            goto err;
        if (seed && !print_bin(bp, "Seed:", seed, seed_len, off))
            goto err;
    }
    ret = 1;
 err:
    if (!ret)
        ECerr(EC_F_ECPKPARAMETERS_PRINT, reason);
    BN_free(p);
    BN_free(a);
    BN_free(b);
    BN_free(gen);
    BN_CTX_free(ctx);
    return ret;
}
