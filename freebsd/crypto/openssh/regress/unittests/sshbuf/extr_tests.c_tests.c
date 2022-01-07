
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sshbuf_fixed () ;
 int sshbuf_fuzz_tests () ;
 int sshbuf_getput_basic_tests () ;
 int sshbuf_getput_crypto_tests () ;
 int sshbuf_getput_fuzz_tests () ;
 int sshbuf_misc_tests () ;
 int sshbuf_tests () ;

void
tests(void)
{
 sshbuf_tests();
 sshbuf_getput_basic_tests();
 sshbuf_getput_crypto_tests();
 sshbuf_misc_tests();
 sshbuf_fuzz_tests();
 sshbuf_getput_fuzz_tests();
 sshbuf_fixed();
}
