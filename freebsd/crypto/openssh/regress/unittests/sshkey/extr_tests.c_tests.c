
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_load_CRYPTO_strings () ;
 int OpenSSL_add_all_algorithms () ;
 int sshkey_file_tests () ;
 int sshkey_fuzz_tests () ;
 int sshkey_tests () ;

void
tests(void)
{
 OpenSSL_add_all_algorithms();
 ERR_load_CRYPTO_strings();

 sshkey_tests();
 sshkey_file_tests();
 sshkey_fuzz_tests();
}
