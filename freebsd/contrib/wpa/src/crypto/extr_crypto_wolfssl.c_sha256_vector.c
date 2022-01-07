
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wc_Sha256 ;
typedef int u8 ;


 scalar_t__ TEST_FAIL () ;
 int wc_InitSha256 (int *) ;
 int wc_Sha256Final (int *,int *) ;
 int wc_Sha256Update (int *,int const*,size_t const) ;

int sha256_vector(size_t num_elem, const u8 *addr[], const size_t *len,
    u8 *mac)
{
 wc_Sha256 sha256;
 size_t i;

 if (TEST_FAIL())
  return -1;

 wc_InitSha256(&sha256);

 for (i = 0; i < num_elem; i++)
  wc_Sha256Update(&sha256, addr[i], len[i]);

 wc_Sha256Final(&sha256, mac);

 return 0;
}
