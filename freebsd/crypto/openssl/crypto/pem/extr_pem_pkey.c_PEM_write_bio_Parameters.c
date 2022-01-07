
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int i2d_of_void ;
struct TYPE_6__ {TYPE_1__* ameth; } ;
struct TYPE_5__ {scalar_t__ param_encode; int pem_str; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef int BIO ;


 int BIO_snprintf (char*,int,char*,int ) ;
 int PEM_ASN1_write_bio (int *,char*,int *,TYPE_2__*,int *,int *,int ,int ,int *) ;

int PEM_write_bio_Parameters(BIO *bp, EVP_PKEY *x)
{
    char pem_str[80];
    if (!x->ameth || !x->ameth->param_encode)
        return 0;

    BIO_snprintf(pem_str, 80, "%s PARAMETERS", x->ameth->pem_str);
    return PEM_ASN1_write_bio((i2d_of_void *)x->ameth->param_encode,
                              pem_str, bp, x, ((void*)0), ((void*)0), 0, 0, ((void*)0));
}
