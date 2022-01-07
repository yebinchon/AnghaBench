
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;
typedef int ENGINE ;


 int NID_sha1 ;
 int fprintf (int ,char*,int) ;
 int stderr ;
 int test_digest_nids (int const**) ;
 int * test_sha_md () ;

__attribute__((used)) static int openssl_digests(ENGINE *e, const EVP_MD **digest,
                           const int **nids, int nid)
{
    if (!digest) {

        return test_digest_nids(nids);
    }

    if (nid == NID_sha1)
        *digest = test_sha_md();
    else {




        *digest = ((void*)0);
        return 0;
    }
    return 1;
}
