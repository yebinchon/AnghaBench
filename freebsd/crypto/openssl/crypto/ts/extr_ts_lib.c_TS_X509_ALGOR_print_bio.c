
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int algorithm; } ;
typedef TYPE_1__ X509_ALGOR ;
typedef int BIO ;


 int BIO_printf (int *,char*,char*) ;
 int NID_undef ;
 char* OBJ_nid2ln (int) ;
 int OBJ_obj2nid (int ) ;

int TS_X509_ALGOR_print_bio(BIO *bio, const X509_ALGOR *alg)
{
    int i = OBJ_obj2nid(alg->algorithm);
    return BIO_printf(bio, "Hash Algorithm: %s\n",
                      (i == NID_undef) ? "UNKNOWN" : OBJ_nid2ln(i));
}
