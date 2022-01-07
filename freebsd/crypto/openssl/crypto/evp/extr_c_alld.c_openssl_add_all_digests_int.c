
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVP_add_digest (int ) ;
 int EVP_add_digest_alias (int ,char*) ;
 int EVP_blake2b512 () ;
 int EVP_blake2s256 () ;
 int EVP_md4 () ;
 int EVP_md5 () ;
 int EVP_md5_sha1 () ;
 int EVP_mdc2 () ;
 int EVP_ripemd160 () ;
 int EVP_sha1 () ;
 int EVP_sha224 () ;
 int EVP_sha256 () ;
 int EVP_sha384 () ;
 int EVP_sha3_224 () ;
 int EVP_sha3_256 () ;
 int EVP_sha3_384 () ;
 int EVP_sha3_512 () ;
 int EVP_sha512 () ;
 int EVP_sha512_224 () ;
 int EVP_sha512_256 () ;
 int EVP_shake128 () ;
 int EVP_shake256 () ;
 int EVP_sm3 () ;
 int EVP_whirlpool () ;
 int SN_md5 ;
 int SN_ripemd160 ;
 int SN_sha1 ;
 char* SN_sha1WithRSA ;
 int SN_sha1WithRSAEncryption ;

void openssl_add_all_digests_int(void)
{

    EVP_add_digest(EVP_md4());


    EVP_add_digest(EVP_md5());
    EVP_add_digest_alias(SN_md5, "ssl3-md5");
    EVP_add_digest(EVP_md5_sha1());

    EVP_add_digest(EVP_sha1());
    EVP_add_digest_alias(SN_sha1, "ssl3-sha1");
    EVP_add_digest_alias(SN_sha1WithRSAEncryption, SN_sha1WithRSA);

    EVP_add_digest(EVP_mdc2());


    EVP_add_digest(EVP_ripemd160());
    EVP_add_digest_alias(SN_ripemd160, "ripemd");
    EVP_add_digest_alias(SN_ripemd160, "rmd160");

    EVP_add_digest(EVP_sha224());
    EVP_add_digest(EVP_sha256());
    EVP_add_digest(EVP_sha384());
    EVP_add_digest(EVP_sha512());
    EVP_add_digest(EVP_sha512_224());
    EVP_add_digest(EVP_sha512_256());

    EVP_add_digest(EVP_whirlpool());


    EVP_add_digest(EVP_sm3());


    EVP_add_digest(EVP_blake2b512());
    EVP_add_digest(EVP_blake2s256());

    EVP_add_digest(EVP_sha3_224());
    EVP_add_digest(EVP_sha3_256());
    EVP_add_digest(EVP_sha3_384());
    EVP_add_digest(EVP_sha3_512());
    EVP_add_digest(EVP_shake128());
    EVP_add_digest(EVP_shake256());
}
