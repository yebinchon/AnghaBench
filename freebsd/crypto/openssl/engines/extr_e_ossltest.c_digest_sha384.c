
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA512_CTX ;
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
 int NID_sha384 ;
 int NID_sha384WithRSAEncryption ;
 int SHA384_DIGEST_LENGTH ;
 int SHA512_CBLOCK ;
 int const* _hidden_sha384_md ;
 int digest_sha384_final ;
 int digest_sha384_init ;
 int digest_sha512_update ;

__attribute__((used)) static const EVP_MD *digest_sha384(void)
{
    if (_hidden_sha384_md == ((void*)0)) {
        EVP_MD *md;

        if ((md = EVP_MD_meth_new(NID_sha384, NID_sha384WithRSAEncryption)) == ((void*)0)
            || !EVP_MD_meth_set_result_size(md, SHA384_DIGEST_LENGTH)
            || !EVP_MD_meth_set_input_blocksize(md, SHA512_CBLOCK)
            || !EVP_MD_meth_set_app_datasize(md,
                                             sizeof(EVP_MD *) + sizeof(SHA512_CTX))
            || !EVP_MD_meth_set_flags(md, EVP_MD_FLAG_DIGALGID_ABSENT)
            || !EVP_MD_meth_set_init(md, digest_sha384_init)
            || !EVP_MD_meth_set_update(md, digest_sha512_update)
            || !EVP_MD_meth_set_final(md, digest_sha384_final)) {
            EVP_MD_meth_free(md);
            md = ((void*)0);
        }
        _hidden_sha384_md = md;
    }
    return _hidden_sha384_md;
}
