
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int plaintext_2 ;
typedef int plaintext ;
typedef int nonce_2 ;
typedef int key_2 ;
typedef int key ;
typedef int iv_c_2 ;
typedef int iv_c ;
typedef int ad2_2 ;
typedef int ad1_2 ;
typedef int ad ;


 int AES_BLOCK_SIZE ;
 int MSG_ERROR ;
 int MSG_INFO ;
 scalar_t__ aes_siv_decrypt (int*,int,int*,int,int,int const**,size_t*,int*) ;
 scalar_t__ aes_siv_encrypt (int*,int,int*,int,int,int const**,size_t*,int*) ;
 scalar_t__ os_memcmp (int*,int*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int test_siv(void)
{
 return 0;
}
