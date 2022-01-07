
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasync_pipeline_ctx {int dummy; } ;
typedef int SHA_CTX ;
typedef int EVP_MD ;
typedef int ENGINE ;


 int BN_mod_exp_mont ;
 int DASYNC_F_BIND_DASYNC ;
 int DASYNC_R_INIT_FAILED ;
 int DASYNCerr (int ,int ) ;
 int ENGINE_set_RSA (int *,int *) ;
 int ENGINE_set_ciphers (int *,int ) ;
 int ENGINE_set_destroy_function (int *,int ) ;
 int ENGINE_set_digests (int *,int ) ;
 int ENGINE_set_finish_function (int *,int ) ;
 int ENGINE_set_id (int *,int ) ;
 int ENGINE_set_init_function (int *,int ) ;
 int ENGINE_set_name (int *,int ) ;
 int ERR_load_DASYNC_strings () ;
 int EVP_CIPHER_meth_free (int *) ;
 int * EVP_CIPHER_meth_new (int ,int,int) ;
 int EVP_CIPHER_meth_set_cleanup (int *,int ) ;
 int EVP_CIPHER_meth_set_ctrl (int *,int ) ;
 int EVP_CIPHER_meth_set_do_cipher (int *,int ) ;
 int EVP_CIPHER_meth_set_flags (int *,int) ;
 int EVP_CIPHER_meth_set_impl_ctx_size (int *,int) ;
 int EVP_CIPHER_meth_set_init (int *,int ) ;
 int EVP_CIPHER_meth_set_iv_length (int *,int) ;
 int EVP_CIPH_CBC_MODE ;
 int EVP_CIPH_FLAG_AEAD_CIPHER ;
 int EVP_CIPH_FLAG_DEFAULT_ASN1 ;
 int EVP_CIPH_FLAG_PIPELINE ;
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
 int NID_aes_128_cbc ;
 int NID_aes_128_cbc_hmac_sha1 ;
 int NID_sha1 ;
 int NID_sha1WithRSAEncryption ;
 int * RSA_meth_new (char*,int ) ;
 scalar_t__ RSA_meth_set_bn_mod_exp (int *,int ) ;
 scalar_t__ RSA_meth_set_finish (int *,int ) ;
 scalar_t__ RSA_meth_set_init (int *,int ) ;
 scalar_t__ RSA_meth_set_mod_exp (int *,int ) ;
 scalar_t__ RSA_meth_set_priv_dec (int *,int ) ;
 scalar_t__ RSA_meth_set_priv_enc (int *,int ) ;
 scalar_t__ RSA_meth_set_pub_dec (int *,int ) ;
 scalar_t__ RSA_meth_set_pub_enc (int *,int ) ;
 int SHA_CBLOCK ;
 int SHA_DIGEST_LENGTH ;
 int * _hidden_aes_128_cbc ;
 int * _hidden_aes_128_cbc_hmac_sha1 ;
 int * _hidden_sha1_md ;
 int dasync_aes128_cbc_cipher ;
 int dasync_aes128_cbc_cleanup ;
 int dasync_aes128_cbc_ctrl ;
 int dasync_aes128_cbc_hmac_sha1_cipher ;
 int dasync_aes128_cbc_hmac_sha1_cleanup ;
 int dasync_aes128_cbc_hmac_sha1_ctrl ;
 int dasync_aes128_cbc_hmac_sha1_init_key ;
 int dasync_aes128_init_key ;
 int dasync_ciphers ;
 int dasync_destroy ;
 int dasync_digests ;
 int dasync_finish ;
 int dasync_init ;
 int dasync_pub_dec ;
 int dasync_pub_enc ;
 int dasync_rsa_finish ;
 int dasync_rsa_init ;
 int * dasync_rsa_method ;
 int dasync_rsa_mod_exp ;
 int dasync_rsa_priv_dec ;
 int dasync_rsa_priv_enc ;
 int dasync_sha1_final ;
 int dasync_sha1_init ;
 int dasync_sha1_update ;
 int engine_dasync_id ;
 int engine_dasync_name ;

__attribute__((used)) static int bind_dasync(ENGINE *e)
{

    if ((dasync_rsa_method = RSA_meth_new("Dummy Async RSA method", 0)) == ((void*)0)
        || RSA_meth_set_pub_enc(dasync_rsa_method, dasync_pub_enc) == 0
        || RSA_meth_set_pub_dec(dasync_rsa_method, dasync_pub_dec) == 0
        || RSA_meth_set_priv_enc(dasync_rsa_method, dasync_rsa_priv_enc) == 0
        || RSA_meth_set_priv_dec(dasync_rsa_method, dasync_rsa_priv_dec) == 0
        || RSA_meth_set_mod_exp(dasync_rsa_method, dasync_rsa_mod_exp) == 0
        || RSA_meth_set_bn_mod_exp(dasync_rsa_method, BN_mod_exp_mont) == 0
        || RSA_meth_set_init(dasync_rsa_method, dasync_rsa_init) == 0
        || RSA_meth_set_finish(dasync_rsa_method, dasync_rsa_finish) == 0) {
        DASYNCerr(DASYNC_F_BIND_DASYNC, DASYNC_R_INIT_FAILED);
        return 0;
    }


    ERR_load_DASYNC_strings();

    if (!ENGINE_set_id(e, engine_dasync_id)
        || !ENGINE_set_name(e, engine_dasync_name)
        || !ENGINE_set_RSA(e, dasync_rsa_method)
        || !ENGINE_set_digests(e, dasync_digests)
        || !ENGINE_set_ciphers(e, dasync_ciphers)
        || !ENGINE_set_destroy_function(e, dasync_destroy)
        || !ENGINE_set_init_function(e, dasync_init)
        || !ENGINE_set_finish_function(e, dasync_finish)) {
        DASYNCerr(DASYNC_F_BIND_DASYNC, DASYNC_R_INIT_FAILED);
        return 0;
    }





    _hidden_sha1_md = EVP_MD_meth_new(NID_sha1, NID_sha1WithRSAEncryption);
    if (_hidden_sha1_md == ((void*)0)
        || !EVP_MD_meth_set_result_size(_hidden_sha1_md, SHA_DIGEST_LENGTH)
        || !EVP_MD_meth_set_input_blocksize(_hidden_sha1_md, SHA_CBLOCK)
        || !EVP_MD_meth_set_app_datasize(_hidden_sha1_md,
                                         sizeof(EVP_MD *) + sizeof(SHA_CTX))
        || !EVP_MD_meth_set_flags(_hidden_sha1_md, EVP_MD_FLAG_DIGALGID_ABSENT)
        || !EVP_MD_meth_set_init(_hidden_sha1_md, dasync_sha1_init)
        || !EVP_MD_meth_set_update(_hidden_sha1_md, dasync_sha1_update)
        || !EVP_MD_meth_set_final(_hidden_sha1_md, dasync_sha1_final)) {
        EVP_MD_meth_free(_hidden_sha1_md);
        _hidden_sha1_md = ((void*)0);
    }

    _hidden_aes_128_cbc = EVP_CIPHER_meth_new(NID_aes_128_cbc,
                                              16 ,
                                              16 );
    if (_hidden_aes_128_cbc == ((void*)0)
            || !EVP_CIPHER_meth_set_iv_length(_hidden_aes_128_cbc,16)
            || !EVP_CIPHER_meth_set_flags(_hidden_aes_128_cbc,
                                          EVP_CIPH_FLAG_DEFAULT_ASN1
                                          | EVP_CIPH_CBC_MODE
                                          | EVP_CIPH_FLAG_PIPELINE)
            || !EVP_CIPHER_meth_set_init(_hidden_aes_128_cbc,
                                         dasync_aes128_init_key)
            || !EVP_CIPHER_meth_set_do_cipher(_hidden_aes_128_cbc,
                                              dasync_aes128_cbc_cipher)
            || !EVP_CIPHER_meth_set_cleanup(_hidden_aes_128_cbc,
                                            dasync_aes128_cbc_cleanup)
            || !EVP_CIPHER_meth_set_ctrl(_hidden_aes_128_cbc,
                                         dasync_aes128_cbc_ctrl)
            || !EVP_CIPHER_meth_set_impl_ctx_size(_hidden_aes_128_cbc,
                                sizeof(struct dasync_pipeline_ctx))) {
        EVP_CIPHER_meth_free(_hidden_aes_128_cbc);
        _hidden_aes_128_cbc = ((void*)0);
    }

    _hidden_aes_128_cbc_hmac_sha1 = EVP_CIPHER_meth_new(
                                                NID_aes_128_cbc_hmac_sha1,
                                                16 ,
                                                16 );
    if (_hidden_aes_128_cbc_hmac_sha1 == ((void*)0)
            || !EVP_CIPHER_meth_set_iv_length(_hidden_aes_128_cbc_hmac_sha1,16)
            || !EVP_CIPHER_meth_set_flags(_hidden_aes_128_cbc_hmac_sha1,
                                            EVP_CIPH_CBC_MODE
                                          | EVP_CIPH_FLAG_DEFAULT_ASN1
                                          | EVP_CIPH_FLAG_AEAD_CIPHER
                                          | EVP_CIPH_FLAG_PIPELINE)
            || !EVP_CIPHER_meth_set_init(_hidden_aes_128_cbc_hmac_sha1,
                                         dasync_aes128_cbc_hmac_sha1_init_key)
            || !EVP_CIPHER_meth_set_do_cipher(_hidden_aes_128_cbc_hmac_sha1,
                                            dasync_aes128_cbc_hmac_sha1_cipher)
            || !EVP_CIPHER_meth_set_cleanup(_hidden_aes_128_cbc_hmac_sha1,
                                            dasync_aes128_cbc_hmac_sha1_cleanup)
            || !EVP_CIPHER_meth_set_ctrl(_hidden_aes_128_cbc_hmac_sha1,
                                         dasync_aes128_cbc_hmac_sha1_ctrl)
            || !EVP_CIPHER_meth_set_impl_ctx_size(_hidden_aes_128_cbc_hmac_sha1,
                                sizeof(struct dasync_pipeline_ctx))) {
        EVP_CIPHER_meth_free(_hidden_aes_128_cbc_hmac_sha1);
        _hidden_aes_128_cbc_hmac_sha1 = ((void*)0);
    }

    return 1;
}
