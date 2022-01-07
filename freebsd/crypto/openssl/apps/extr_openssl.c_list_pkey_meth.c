
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_METHOD ;


 int ASN1_PKEY_DYNAMIC ;
 int BIO_printf (int ,char*,char*) ;
 int * EVP_PKEY_meth_get0 (size_t) ;
 int EVP_PKEY_meth_get0_info (int*,int*,int const*) ;
 size_t EVP_PKEY_meth_get_count () ;
 char* OBJ_nid2ln (int) ;
 int bio_out ;

__attribute__((used)) static void list_pkey_meth(void)
{
    size_t i;
    size_t meth_count = EVP_PKEY_meth_get_count();

    for (i = 0; i < meth_count; i++) {
        const EVP_PKEY_METHOD *pmeth = EVP_PKEY_meth_get0(i);
        int pkey_id, pkey_flags;

        EVP_PKEY_meth_get0_info(&pkey_id, &pkey_flags, pmeth);
        BIO_printf(bio_out, "%s\n", OBJ_nid2ln(pkey_id));
        BIO_printf(bio_out, "\tType: %s Algorithm\n",
                   pkey_flags & ASN1_PKEY_DYNAMIC ? "External" : "Builtin");
    }
}
