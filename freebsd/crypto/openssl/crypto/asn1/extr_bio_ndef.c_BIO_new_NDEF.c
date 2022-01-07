
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ (* asn1_cb ) (int ,int **,TYPE_3__ const*,TYPE_2__*) ;} ;
struct TYPE_13__ {TYPE_4__* funcs; } ;
struct TYPE_12__ {int * ndef_bio; int * boundary; int * out; } ;
struct TYPE_11__ {int * out; int * boundary; int * ndef_bio; TYPE_3__ const* it; int * val; } ;
typedef TYPE_1__ NDEF_SUPPORT ;
typedef int BIO ;
typedef int ASN1_VALUE ;
typedef TYPE_2__ ASN1_STREAM_ARG ;
typedef TYPE_3__ ASN1_ITEM ;
typedef TYPE_4__ ASN1_AUX ;


 int ASN1_F_BIO_NEW_NDEF ;
 int ASN1_OP_STREAM_PRE ;
 int ASN1_R_STREAMING_NOT_SUPPORTED ;
 int ASN1err (int ,int ) ;
 int BIO_C_SET_EX_ARG ;
 int BIO_asn1_set_prefix (int *,int ,int ) ;
 int BIO_asn1_set_suffix (int *,int ,int ) ;
 int BIO_ctrl (int *,int ,int ,TYPE_1__*) ;
 int BIO_f_asn1 () ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int * BIO_push (int *,int *) ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int ndef_prefix ;
 int ndef_prefix_free ;
 int ndef_suffix ;
 int ndef_suffix_free ;
 scalar_t__ stub1 (int ,int **,TYPE_3__ const*,TYPE_2__*) ;

BIO *BIO_new_NDEF(BIO *out, ASN1_VALUE *val, const ASN1_ITEM *it)
{
    NDEF_SUPPORT *ndef_aux = ((void*)0);
    BIO *asn_bio = ((void*)0);
    const ASN1_AUX *aux = it->funcs;
    ASN1_STREAM_ARG sarg;

    if (!aux || !aux->asn1_cb) {
        ASN1err(ASN1_F_BIO_NEW_NDEF, ASN1_R_STREAMING_NOT_SUPPORTED);
        return ((void*)0);
    }
    ndef_aux = OPENSSL_zalloc(sizeof(*ndef_aux));
    asn_bio = BIO_new(BIO_f_asn1());
    if (ndef_aux == ((void*)0) || asn_bio == ((void*)0))
        goto err;


    out = BIO_push(asn_bio, out);
    if (out == ((void*)0))
        goto err;

    BIO_asn1_set_prefix(asn_bio, ndef_prefix, ndef_prefix_free);
    BIO_asn1_set_suffix(asn_bio, ndef_suffix, ndef_suffix_free);






    sarg.out = out;
    sarg.ndef_bio = ((void*)0);
    sarg.boundary = ((void*)0);

    if (aux->asn1_cb(ASN1_OP_STREAM_PRE, &val, it, &sarg) <= 0)
        goto err;

    ndef_aux->val = val;
    ndef_aux->it = it;
    ndef_aux->ndef_bio = sarg.ndef_bio;
    ndef_aux->boundary = sarg.boundary;
    ndef_aux->out = out;

    BIO_ctrl(asn_bio, BIO_C_SET_EX_ARG, 0, ndef_aux);

    return sarg.ndef_bio;

 err:
    BIO_free(asn_bio);
    OPENSSL_free(ndef_aux);
    return ((void*)0);
}
