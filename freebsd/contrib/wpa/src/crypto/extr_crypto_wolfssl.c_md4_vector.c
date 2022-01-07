
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int Md4 ;


 scalar_t__ TEST_FAIL () ;
 int wc_InitMd4 (int *) ;
 int wc_Md4Final (int *,int *) ;
 int wc_Md4Update (int *,int const*,size_t const) ;

int md4_vector(size_t num_elem, const u8 *addr[], const size_t *len, u8 *mac)
{
 Md4 md4;
 size_t i;

 if (TEST_FAIL())
  return -1;

 wc_InitMd4(&md4);

 for (i = 0; i < num_elem; i++)
  wc_Md4Update(&md4, addr[i], len[i]);

 wc_Md4Final(&md4, mac);

 return 0;
}
