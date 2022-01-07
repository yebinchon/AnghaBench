
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA256_CTX ;
typedef int EVP_MD ;


 int EVP_MD_FLAG_DIGALGID_ABSENT ;
 int EVP_MD_meth_free (int *) ;
 int * EVP_MD_meth_new (int ,int ) ;
 int EVP_MD_meth_set_app_datasize (int *,int) ;
 int EVP_MD_meth_set_final (int *,int ) ;
 int EVP_MD_meth_set_flags (int *,int ) ;
 int EVP_MD_meth_set_init (int *,int ) ;
 int EVP_MD_meth_set_input_blocksize (int *,int ) ;
 int EVP_MD_meth_set_result_size (int *,int ) ;
 int EVP_MD_meth_set_update (int *,int ) ;
 int NID_sha256 ;
 int NID_sha256WithRSAEncryption ;
 int SHA256_CBLOCK ;
 int SHA256_DIGEST_LENGTH ;
 int const* _hidden_sha256_md ;
 int digest_sha256_final ;
 int digest_sha256_init ;
 int digest_sha256_update ;

__attribute__((used)) static const EVP_MD *digest_sha256(void)
{
    if (_hidden_sha256_md == ((void*)0)) {
        EVP_MD *md;

        if ((md = EVP_MD_meth_new(NID_sha256, NID_sha256WithRSAEncryption)) == ((void*)0)
            || !EVP_MD_meth_set_result_size(md, SHA256_DIGEST_LENGTH)
            || !EVP_MD_meth_set_input_blocksize(md, SHA256_CBLOCK)
            || !EVP_MD_meth_set_app_datasize(md,
                                             sizeof(EVP_MD *) + sizeof(SHA256_CTX))
            || !EVP_MD_meth_set_flags(md, EVP_MD_FLAG_DIGALGID_ABSENT)
            || !EVP_MD_meth_set_init(md, digest_sha256_init)
            || !EVP_MD_meth_set_update(md, digest_sha256_update)
            || !EVP_MD_meth_set_final(md, digest_sha256_final)) {
            EVP_MD_meth_free(md);
            md = ((void*)0);
        }
        _hidden_sha256_md = md;
    }
    return _hidden_sha256_md;
}
