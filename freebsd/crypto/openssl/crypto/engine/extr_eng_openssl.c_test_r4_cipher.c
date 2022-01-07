
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TEST_RC4_KEY ;
typedef int EVP_CIPHER ;


 int EVP_CIPHER_meth_free (int *) ;
 int * EVP_CIPHER_meth_new (int ,int,int ) ;
 int EVP_CIPHER_meth_set_do_cipher (int *,int ) ;
 int EVP_CIPHER_meth_set_flags (int *,int ) ;
 int EVP_CIPHER_meth_set_impl_ctx_size (int *,int) ;
 int EVP_CIPHER_meth_set_init (int *,int ) ;
 int EVP_CIPHER_meth_set_iv_length (int *,int ) ;
 int EVP_CIPH_VARIABLE_LENGTH ;
 int NID_rc4 ;
 int TEST_RC4_KEY_SIZE ;
 int const* r4_cipher ;
 int test_rc4_cipher ;
 int test_rc4_init_key ;

__attribute__((used)) static const EVP_CIPHER *test_r4_cipher(void)
{
    if (r4_cipher == ((void*)0)) {
        EVP_CIPHER *cipher;

        if ((cipher = EVP_CIPHER_meth_new(NID_rc4, 1, TEST_RC4_KEY_SIZE)) == ((void*)0)
            || !EVP_CIPHER_meth_set_iv_length(cipher, 0)
            || !EVP_CIPHER_meth_set_flags(cipher, EVP_CIPH_VARIABLE_LENGTH)
            || !EVP_CIPHER_meth_set_init(cipher, test_rc4_init_key)
            || !EVP_CIPHER_meth_set_do_cipher(cipher, test_rc4_cipher)
            || !EVP_CIPHER_meth_set_impl_ctx_size(cipher, sizeof(TEST_RC4_KEY))) {
            EVP_CIPHER_meth_free(cipher);
            cipher = ((void*)0);
        }
        r4_cipher = cipher;
    }
    return r4_cipher;
}
