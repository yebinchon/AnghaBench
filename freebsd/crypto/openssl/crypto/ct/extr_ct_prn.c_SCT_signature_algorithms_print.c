
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sig_alg; int hash_alg; } ;
typedef TYPE_1__ SCT ;
typedef int BIO ;


 int BIO_printf (int *,char*,int ,...) ;
 int NID_undef ;
 int OBJ_nid2ln (int) ;
 int SCT_get_signature_nid (TYPE_1__ const*) ;

__attribute__((used)) static void SCT_signature_algorithms_print(const SCT *sct, BIO *out)
{
    int nid = SCT_get_signature_nid(sct);

    if (nid == NID_undef)
        BIO_printf(out, "%02X%02X", sct->hash_alg, sct->sig_alg);
    else
        BIO_printf(out, "%s", OBJ_nid2ln(nid));
}
