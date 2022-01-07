
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int asn1_ps_func ;
struct TYPE_3__ {int * ex_free_func; int * ex_func; } ;
typedef TYPE_1__ BIO_ASN1_EX_FUNCS ;
typedef int BIO ;


 int BIO_ctrl (int *,int,int ,TYPE_1__*) ;

__attribute__((used)) static int asn1_bio_set_ex(BIO *b, int cmd,
                           asn1_ps_func *ex_func, asn1_ps_func *ex_free_func)
{
    BIO_ASN1_EX_FUNCS extmp;
    extmp.ex_func = ex_func;
    extmp.ex_free_func = ex_free_func;
    return BIO_ctrl(b, cmd, 0, &extmp);
}
