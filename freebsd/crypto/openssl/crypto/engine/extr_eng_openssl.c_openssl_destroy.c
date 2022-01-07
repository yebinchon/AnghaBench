
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int test_r4_40_cipher_destroy () ;
 int test_r4_cipher_destroy () ;
 int test_sha_md_destroy () ;

int openssl_destroy(ENGINE *e)
{
    test_sha_md_destroy();




    return 1;
}
