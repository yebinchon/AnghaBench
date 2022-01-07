
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;
typedef int ENGINE ;



 int dasync_digest_nids (int const**) ;
 int * dasync_sha1 () ;

__attribute__((used)) static int dasync_digests(ENGINE *e, const EVP_MD **digest,
                          const int **nids, int nid)
{
    int ok = 1;
    if (!digest) {

        return dasync_digest_nids(nids);
    }

    switch (nid) {
    case 128:
        *digest = dasync_sha1();
        break;
    default:
        ok = 0;
        *digest = ((void*)0);
        break;
    }
    return ok;
}
