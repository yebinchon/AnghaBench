
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wc_Md5 ;
typedef int u8 ;


 scalar_t__ TEST_FAIL () ;
 int wc_InitMd5 (int *) ;
 int wc_Md5Final (int *,int *) ;
 int wc_Md5Update (int *,int const*,size_t const) ;

int md5_vector(size_t num_elem, const u8 *addr[], const size_t *len, u8 *mac)
{
 wc_Md5 md5;
 size_t i;

 if (TEST_FAIL())
  return -1;

 wc_InitMd5(&md5);

 for (i = 0; i < num_elem; i++)
  wc_Md5Update(&md5, addr[i], len[i]);

 wc_Md5Final(&md5, mac);

 return 0;
}
