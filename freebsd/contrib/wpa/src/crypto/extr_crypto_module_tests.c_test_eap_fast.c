
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tlv ;
typedef int sks ;
typedef int seed ;
typedef int pac_key ;
typedef int msk ;
typedef int master_secret ;
typedef int key_block ;
typedef int isk ;
typedef int imck ;
typedef int emsk ;
typedef int compound_mac ;


 int MSG_INFO ;
 scalar_t__ hmac_sha1 (int const*,int,int*,int,int*) ;
 scalar_t__ os_memcmp (int const*,int const*,int) ;
 int os_memset (int*,int ,int) ;
 scalar_t__ sha1_t_prf (int const*,int,char*,int const*,int,int*,int) ;
 scalar_t__ tls_prf_sha1_md5 (int const*,int,char*,int const*,int,int*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int test_eap_fast(void)
{
 return 0;

}
