
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int nonce ;
typedef int msg ;
typedef int hdr ;
typedef int data ;


 int AES_BLOCK_SIZE ;
 int MSG_ERROR ;
 int MSG_INFO ;
 scalar_t__ aes_128_eax_decrypt (int*,int*,int,int*,int,int*,int,int*) ;
 scalar_t__ aes_128_eax_encrypt (int*,int*,int,int*,int,int*,int,int*) ;
 scalar_t__ os_memcmp (int*,int*,int) ;
 int os_memcpy (int*,int*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int test_eax(void)
{
 return 0;
}
