
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVP_add_cipher (int ) ;
 int EVP_add_cipher_alias (int ,char*) ;
 int EVP_aes_128_cbc () ;
 int EVP_aes_128_cbc_hmac_sha1 () ;
 int EVP_aes_128_cbc_hmac_sha256 () ;
 int EVP_aes_128_ccm () ;
 int EVP_aes_128_cfb () ;
 int EVP_aes_128_cfb1 () ;
 int EVP_aes_128_cfb8 () ;
 int EVP_aes_128_ctr () ;
 int EVP_aes_128_ecb () ;
 int EVP_aes_128_gcm () ;
 int EVP_aes_128_ocb () ;
 int EVP_aes_128_ofb () ;
 int EVP_aes_128_wrap () ;
 int EVP_aes_128_wrap_pad () ;
 int EVP_aes_128_xts () ;
 int EVP_aes_192_cbc () ;
 int EVP_aes_192_ccm () ;
 int EVP_aes_192_cfb () ;
 int EVP_aes_192_cfb1 () ;
 int EVP_aes_192_cfb8 () ;
 int EVP_aes_192_ctr () ;
 int EVP_aes_192_ecb () ;
 int EVP_aes_192_gcm () ;
 int EVP_aes_192_ocb () ;
 int EVP_aes_192_ofb () ;
 int EVP_aes_192_wrap () ;
 int EVP_aes_192_wrap_pad () ;
 int EVP_aes_256_cbc () ;
 int EVP_aes_256_cbc_hmac_sha1 () ;
 int EVP_aes_256_cbc_hmac_sha256 () ;
 int EVP_aes_256_ccm () ;
 int EVP_aes_256_cfb () ;
 int EVP_aes_256_cfb1 () ;
 int EVP_aes_256_cfb8 () ;
 int EVP_aes_256_ctr () ;
 int EVP_aes_256_ecb () ;
 int EVP_aes_256_gcm () ;
 int EVP_aes_256_ocb () ;
 int EVP_aes_256_ofb () ;
 int EVP_aes_256_wrap () ;
 int EVP_aes_256_wrap_pad () ;
 int EVP_aes_256_xts () ;
 int EVP_aria_128_cbc () ;
 int EVP_aria_128_ccm () ;
 int EVP_aria_128_cfb () ;
 int EVP_aria_128_cfb1 () ;
 int EVP_aria_128_cfb8 () ;
 int EVP_aria_128_ctr () ;
 int EVP_aria_128_ecb () ;
 int EVP_aria_128_gcm () ;
 int EVP_aria_128_ofb () ;
 int EVP_aria_192_cbc () ;
 int EVP_aria_192_ccm () ;
 int EVP_aria_192_cfb () ;
 int EVP_aria_192_cfb1 () ;
 int EVP_aria_192_cfb8 () ;
 int EVP_aria_192_ctr () ;
 int EVP_aria_192_ecb () ;
 int EVP_aria_192_gcm () ;
 int EVP_aria_192_ofb () ;
 int EVP_aria_256_cbc () ;
 int EVP_aria_256_ccm () ;
 int EVP_aria_256_cfb () ;
 int EVP_aria_256_cfb1 () ;
 int EVP_aria_256_cfb8 () ;
 int EVP_aria_256_ctr () ;
 int EVP_aria_256_ecb () ;
 int EVP_aria_256_gcm () ;
 int EVP_aria_256_ofb () ;
 int EVP_bf_cbc () ;
 int EVP_bf_cfb () ;
 int EVP_bf_ecb () ;
 int EVP_bf_ofb () ;
 int EVP_camellia_128_cbc () ;
 int EVP_camellia_128_cfb () ;
 int EVP_camellia_128_cfb1 () ;
 int EVP_camellia_128_cfb8 () ;
 int EVP_camellia_128_ctr () ;
 int EVP_camellia_128_ecb () ;
 int EVP_camellia_128_ofb () ;
 int EVP_camellia_192_cbc () ;
 int EVP_camellia_192_cfb () ;
 int EVP_camellia_192_cfb1 () ;
 int EVP_camellia_192_cfb8 () ;
 int EVP_camellia_192_ctr () ;
 int EVP_camellia_192_ecb () ;
 int EVP_camellia_192_ofb () ;
 int EVP_camellia_256_cbc () ;
 int EVP_camellia_256_cfb () ;
 int EVP_camellia_256_cfb1 () ;
 int EVP_camellia_256_cfb8 () ;
 int EVP_camellia_256_ctr () ;
 int EVP_camellia_256_ecb () ;
 int EVP_camellia_256_ofb () ;
 int EVP_cast5_cbc () ;
 int EVP_cast5_cfb () ;
 int EVP_cast5_ecb () ;
 int EVP_cast5_ofb () ;
 int EVP_chacha20 () ;
 int EVP_chacha20_poly1305 () ;
 int EVP_des_cbc () ;
 int EVP_des_cfb () ;
 int EVP_des_cfb1 () ;
 int EVP_des_cfb8 () ;
 int EVP_des_ecb () ;
 int EVP_des_ede () ;
 int EVP_des_ede3 () ;
 int EVP_des_ede3_cbc () ;
 int EVP_des_ede3_cfb () ;
 int EVP_des_ede3_cfb1 () ;
 int EVP_des_ede3_cfb8 () ;
 int EVP_des_ede3_ofb () ;
 int EVP_des_ede3_wrap () ;
 int EVP_des_ede_cbc () ;
 int EVP_des_ede_cfb () ;
 int EVP_des_ede_ofb () ;
 int EVP_des_ofb () ;
 int EVP_desx_cbc () ;
 int EVP_idea_cbc () ;
 int EVP_idea_cfb () ;
 int EVP_idea_ecb () ;
 int EVP_idea_ofb () ;
 int EVP_rc2_40_cbc () ;
 int EVP_rc2_64_cbc () ;
 int EVP_rc2_cbc () ;
 int EVP_rc2_cfb () ;
 int EVP_rc2_ecb () ;
 int EVP_rc2_ofb () ;
 int EVP_rc4 () ;
 int EVP_rc4_40 () ;
 int EVP_rc4_hmac_md5 () ;
 int EVP_rc5_32_12_16_cbc () ;
 int EVP_rc5_32_12_16_cfb () ;
 int EVP_rc5_32_12_16_ecb () ;
 int EVP_rc5_32_12_16_ofb () ;
 int EVP_seed_cbc () ;
 int EVP_seed_cfb () ;
 int EVP_seed_ecb () ;
 int EVP_seed_ofb () ;
 int EVP_sm4_cbc () ;
 int EVP_sm4_cfb () ;
 int EVP_sm4_ctr () ;
 int EVP_sm4_ecb () ;
 int EVP_sm4_ofb () ;
 int SN_aes_128_cbc ;
 int SN_aes_192_cbc ;
 int SN_aes_256_cbc ;
 int SN_aria_128_cbc ;
 int SN_aria_192_cbc ;
 int SN_aria_256_cbc ;
 int SN_bf_cbc ;
 int SN_camellia_128_cbc ;
 int SN_camellia_192_cbc ;
 int SN_camellia_256_cbc ;
 int SN_cast5_cbc ;
 int SN_des_cbc ;
 int SN_des_ede3_cbc ;
 int SN_des_ede3_ecb ;
 int SN_des_ede_ecb ;
 int SN_desx_cbc ;
 int SN_id_aes128_wrap ;
 int SN_id_aes192_wrap ;
 int SN_id_aes256_wrap ;
 int SN_id_smime_alg_CMS3DESwrap ;
 int SN_idea_cbc ;
 int SN_rc2_40_cbc ;
 int SN_rc2_64_cbc ;
 int SN_rc2_cbc ;
 int SN_rc5_cbc ;
 int SN_seed_cbc ;
 int SN_sm4_cbc ;

void openssl_add_all_ciphers_int(void)
{


    EVP_add_cipher(EVP_des_cfb());
    EVP_add_cipher(EVP_des_cfb1());
    EVP_add_cipher(EVP_des_cfb8());
    EVP_add_cipher(EVP_des_ede_cfb());
    EVP_add_cipher(EVP_des_ede3_cfb());
    EVP_add_cipher(EVP_des_ede3_cfb1());
    EVP_add_cipher(EVP_des_ede3_cfb8());

    EVP_add_cipher(EVP_des_ofb());
    EVP_add_cipher(EVP_des_ede_ofb());
    EVP_add_cipher(EVP_des_ede3_ofb());

    EVP_add_cipher(EVP_desx_cbc());
    EVP_add_cipher_alias(SN_desx_cbc, "DESX");
    EVP_add_cipher_alias(SN_desx_cbc, "desx");

    EVP_add_cipher(EVP_des_cbc());
    EVP_add_cipher_alias(SN_des_cbc, "DES");
    EVP_add_cipher_alias(SN_des_cbc, "des");
    EVP_add_cipher(EVP_des_ede_cbc());
    EVP_add_cipher(EVP_des_ede3_cbc());
    EVP_add_cipher_alias(SN_des_ede3_cbc, "DES3");
    EVP_add_cipher_alias(SN_des_ede3_cbc, "des3");

    EVP_add_cipher(EVP_des_ecb());
    EVP_add_cipher(EVP_des_ede());
    EVP_add_cipher_alias(SN_des_ede_ecb, "DES-EDE-ECB");
    EVP_add_cipher_alias(SN_des_ede_ecb, "des-ede-ecb");
    EVP_add_cipher(EVP_des_ede3());
    EVP_add_cipher_alias(SN_des_ede3_ecb, "DES-EDE3-ECB");
    EVP_add_cipher_alias(SN_des_ede3_ecb, "des-ede3-ecb");
    EVP_add_cipher(EVP_des_ede3_wrap());
    EVP_add_cipher_alias(SN_id_smime_alg_CMS3DESwrap, "des3-wrap");



    EVP_add_cipher(EVP_rc4());
    EVP_add_cipher(EVP_rc4_40());

    EVP_add_cipher(EVP_rc4_hmac_md5());




    EVP_add_cipher(EVP_idea_ecb());
    EVP_add_cipher(EVP_idea_cfb());
    EVP_add_cipher(EVP_idea_ofb());
    EVP_add_cipher(EVP_idea_cbc());
    EVP_add_cipher_alias(SN_idea_cbc, "IDEA");
    EVP_add_cipher_alias(SN_idea_cbc, "idea");



    EVP_add_cipher(EVP_seed_ecb());
    EVP_add_cipher(EVP_seed_cfb());
    EVP_add_cipher(EVP_seed_ofb());
    EVP_add_cipher(EVP_seed_cbc());
    EVP_add_cipher_alias(SN_seed_cbc, "SEED");
    EVP_add_cipher_alias(SN_seed_cbc, "seed");



    EVP_add_cipher(EVP_sm4_ecb());
    EVP_add_cipher(EVP_sm4_cbc());
    EVP_add_cipher(EVP_sm4_cfb());
    EVP_add_cipher(EVP_sm4_ofb());
    EVP_add_cipher(EVP_sm4_ctr());
    EVP_add_cipher_alias(SN_sm4_cbc, "SM4");
    EVP_add_cipher_alias(SN_sm4_cbc, "sm4");



    EVP_add_cipher(EVP_rc2_ecb());
    EVP_add_cipher(EVP_rc2_cfb());
    EVP_add_cipher(EVP_rc2_ofb());
    EVP_add_cipher(EVP_rc2_cbc());
    EVP_add_cipher(EVP_rc2_40_cbc());
    EVP_add_cipher(EVP_rc2_64_cbc());
    EVP_add_cipher_alias(SN_rc2_cbc, "RC2");
    EVP_add_cipher_alias(SN_rc2_cbc, "rc2");
    EVP_add_cipher_alias(SN_rc2_cbc, "rc2-128");
    EVP_add_cipher_alias(SN_rc2_64_cbc, "rc2-64");
    EVP_add_cipher_alias(SN_rc2_40_cbc, "rc2-40");



    EVP_add_cipher(EVP_bf_ecb());
    EVP_add_cipher(EVP_bf_cfb());
    EVP_add_cipher(EVP_bf_ofb());
    EVP_add_cipher(EVP_bf_cbc());
    EVP_add_cipher_alias(SN_bf_cbc, "BF");
    EVP_add_cipher_alias(SN_bf_cbc, "bf");
    EVP_add_cipher_alias(SN_bf_cbc, "blowfish");



    EVP_add_cipher(EVP_cast5_ecb());
    EVP_add_cipher(EVP_cast5_cfb());
    EVP_add_cipher(EVP_cast5_ofb());
    EVP_add_cipher(EVP_cast5_cbc());
    EVP_add_cipher_alias(SN_cast5_cbc, "CAST");
    EVP_add_cipher_alias(SN_cast5_cbc, "cast");
    EVP_add_cipher_alias(SN_cast5_cbc, "CAST-cbc");
    EVP_add_cipher_alias(SN_cast5_cbc, "cast-cbc");



    EVP_add_cipher(EVP_rc5_32_12_16_ecb());
    EVP_add_cipher(EVP_rc5_32_12_16_cfb());
    EVP_add_cipher(EVP_rc5_32_12_16_ofb());
    EVP_add_cipher(EVP_rc5_32_12_16_cbc());
    EVP_add_cipher_alias(SN_rc5_cbc, "rc5");
    EVP_add_cipher_alias(SN_rc5_cbc, "RC5");


    EVP_add_cipher(EVP_aes_128_ecb());
    EVP_add_cipher(EVP_aes_128_cbc());
    EVP_add_cipher(EVP_aes_128_cfb());
    EVP_add_cipher(EVP_aes_128_cfb1());
    EVP_add_cipher(EVP_aes_128_cfb8());
    EVP_add_cipher(EVP_aes_128_ofb());
    EVP_add_cipher(EVP_aes_128_ctr());
    EVP_add_cipher(EVP_aes_128_gcm());

    EVP_add_cipher(EVP_aes_128_ocb());

    EVP_add_cipher(EVP_aes_128_xts());
    EVP_add_cipher(EVP_aes_128_ccm());
    EVP_add_cipher(EVP_aes_128_wrap());
    EVP_add_cipher_alias(SN_id_aes128_wrap, "aes128-wrap");
    EVP_add_cipher(EVP_aes_128_wrap_pad());
    EVP_add_cipher_alias(SN_aes_128_cbc, "AES128");
    EVP_add_cipher_alias(SN_aes_128_cbc, "aes128");
    EVP_add_cipher(EVP_aes_192_ecb());
    EVP_add_cipher(EVP_aes_192_cbc());
    EVP_add_cipher(EVP_aes_192_cfb());
    EVP_add_cipher(EVP_aes_192_cfb1());
    EVP_add_cipher(EVP_aes_192_cfb8());
    EVP_add_cipher(EVP_aes_192_ofb());
    EVP_add_cipher(EVP_aes_192_ctr());
    EVP_add_cipher(EVP_aes_192_gcm());

    EVP_add_cipher(EVP_aes_192_ocb());

    EVP_add_cipher(EVP_aes_192_ccm());
    EVP_add_cipher(EVP_aes_192_wrap());
    EVP_add_cipher_alias(SN_id_aes192_wrap, "aes192-wrap");
    EVP_add_cipher(EVP_aes_192_wrap_pad());
    EVP_add_cipher_alias(SN_aes_192_cbc, "AES192");
    EVP_add_cipher_alias(SN_aes_192_cbc, "aes192");
    EVP_add_cipher(EVP_aes_256_ecb());
    EVP_add_cipher(EVP_aes_256_cbc());
    EVP_add_cipher(EVP_aes_256_cfb());
    EVP_add_cipher(EVP_aes_256_cfb1());
    EVP_add_cipher(EVP_aes_256_cfb8());
    EVP_add_cipher(EVP_aes_256_ofb());
    EVP_add_cipher(EVP_aes_256_ctr());
    EVP_add_cipher(EVP_aes_256_gcm());

    EVP_add_cipher(EVP_aes_256_ocb());

    EVP_add_cipher(EVP_aes_256_xts());
    EVP_add_cipher(EVP_aes_256_ccm());
    EVP_add_cipher(EVP_aes_256_wrap());
    EVP_add_cipher_alias(SN_id_aes256_wrap, "aes256-wrap");
    EVP_add_cipher(EVP_aes_256_wrap_pad());
    EVP_add_cipher_alias(SN_aes_256_cbc, "AES256");
    EVP_add_cipher_alias(SN_aes_256_cbc, "aes256");
    EVP_add_cipher(EVP_aes_128_cbc_hmac_sha1());
    EVP_add_cipher(EVP_aes_256_cbc_hmac_sha1());
    EVP_add_cipher(EVP_aes_128_cbc_hmac_sha256());
    EVP_add_cipher(EVP_aes_256_cbc_hmac_sha256());


    EVP_add_cipher(EVP_aria_128_ecb());
    EVP_add_cipher(EVP_aria_128_cbc());
    EVP_add_cipher(EVP_aria_128_cfb());
    EVP_add_cipher(EVP_aria_128_cfb1());
    EVP_add_cipher(EVP_aria_128_cfb8());
    EVP_add_cipher(EVP_aria_128_ctr());
    EVP_add_cipher(EVP_aria_128_ofb());
    EVP_add_cipher(EVP_aria_128_gcm());
    EVP_add_cipher(EVP_aria_128_ccm());
    EVP_add_cipher_alias(SN_aria_128_cbc, "ARIA128");
    EVP_add_cipher_alias(SN_aria_128_cbc, "aria128");
    EVP_add_cipher(EVP_aria_192_ecb());
    EVP_add_cipher(EVP_aria_192_cbc());
    EVP_add_cipher(EVP_aria_192_cfb());
    EVP_add_cipher(EVP_aria_192_cfb1());
    EVP_add_cipher(EVP_aria_192_cfb8());
    EVP_add_cipher(EVP_aria_192_ctr());
    EVP_add_cipher(EVP_aria_192_ofb());
    EVP_add_cipher(EVP_aria_192_gcm());
    EVP_add_cipher(EVP_aria_192_ccm());
    EVP_add_cipher_alias(SN_aria_192_cbc, "ARIA192");
    EVP_add_cipher_alias(SN_aria_192_cbc, "aria192");
    EVP_add_cipher(EVP_aria_256_ecb());
    EVP_add_cipher(EVP_aria_256_cbc());
    EVP_add_cipher(EVP_aria_256_cfb());
    EVP_add_cipher(EVP_aria_256_cfb1());
    EVP_add_cipher(EVP_aria_256_cfb8());
    EVP_add_cipher(EVP_aria_256_ctr());
    EVP_add_cipher(EVP_aria_256_ofb());
    EVP_add_cipher(EVP_aria_256_gcm());
    EVP_add_cipher(EVP_aria_256_ccm());
    EVP_add_cipher_alias(SN_aria_256_cbc, "ARIA256");
    EVP_add_cipher_alias(SN_aria_256_cbc, "aria256");



    EVP_add_cipher(EVP_camellia_128_ecb());
    EVP_add_cipher(EVP_camellia_128_cbc());
    EVP_add_cipher(EVP_camellia_128_cfb());
    EVP_add_cipher(EVP_camellia_128_cfb1());
    EVP_add_cipher(EVP_camellia_128_cfb8());
    EVP_add_cipher(EVP_camellia_128_ofb());
    EVP_add_cipher_alias(SN_camellia_128_cbc, "CAMELLIA128");
    EVP_add_cipher_alias(SN_camellia_128_cbc, "camellia128");
    EVP_add_cipher(EVP_camellia_192_ecb());
    EVP_add_cipher(EVP_camellia_192_cbc());
    EVP_add_cipher(EVP_camellia_192_cfb());
    EVP_add_cipher(EVP_camellia_192_cfb1());
    EVP_add_cipher(EVP_camellia_192_cfb8());
    EVP_add_cipher(EVP_camellia_192_ofb());
    EVP_add_cipher_alias(SN_camellia_192_cbc, "CAMELLIA192");
    EVP_add_cipher_alias(SN_camellia_192_cbc, "camellia192");
    EVP_add_cipher(EVP_camellia_256_ecb());
    EVP_add_cipher(EVP_camellia_256_cbc());
    EVP_add_cipher(EVP_camellia_256_cfb());
    EVP_add_cipher(EVP_camellia_256_cfb1());
    EVP_add_cipher(EVP_camellia_256_cfb8());
    EVP_add_cipher(EVP_camellia_256_ofb());
    EVP_add_cipher_alias(SN_camellia_256_cbc, "CAMELLIA256");
    EVP_add_cipher_alias(SN_camellia_256_cbc, "camellia256");
    EVP_add_cipher(EVP_camellia_128_ctr());
    EVP_add_cipher(EVP_camellia_192_ctr());
    EVP_add_cipher(EVP_camellia_256_ctr());



    EVP_add_cipher(EVP_chacha20());

    EVP_add_cipher(EVP_chacha20_poly1305());


}
