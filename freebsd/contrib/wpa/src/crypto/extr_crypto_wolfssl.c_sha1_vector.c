
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wc_Sha ;
typedef int u8 ;


 scalar_t__ TEST_FAIL () ;
 int wc_InitSha (int *) ;
 int wc_ShaFinal (int *,int *) ;
 int wc_ShaUpdate (int *,int const*,size_t const) ;

int sha1_vector(size_t num_elem, const u8 *addr[], const size_t *len, u8 *mac)
{
 wc_Sha sha;
 size_t i;

 if (TEST_FAIL())
  return -1;

 wc_InitSha(&sha);

 for (i = 0; i < num_elem; i++)
  wc_ShaUpdate(&sha, addr[i], len[i]);

 wc_ShaFinal(&sha, mac);

 return 0;
}
