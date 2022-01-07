
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;
typedef int ENGINE ;


 int NID_rc4 ;
 int NID_rc4_40 ;
 int fprintf (int ,char*,int) ;
 int stderr ;
 int test_cipher_nids (int const**) ;
 int * test_r4_40_cipher () ;
 int * test_r4_cipher () ;

__attribute__((used)) static int openssl_ciphers(ENGINE *e, const EVP_CIPHER **cipher,
                           const int **nids, int nid)
{
    if (!cipher) {

        return test_cipher_nids(nids);
    }

    if (nid == NID_rc4)
        *cipher = test_r4_cipher();
    else if (nid == NID_rc4_40)
        *cipher = test_r4_40_cipher();
    else {




        *cipher = ((void*)0);
        return 0;
    }
    return 1;
}
