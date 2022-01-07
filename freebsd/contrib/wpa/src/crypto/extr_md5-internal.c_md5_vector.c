
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int MD5_CTX ;


 int MD5Final (int *,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,int const*,size_t const) ;
 scalar_t__ TEST_FAIL () ;

int md5_vector(size_t num_elem, const u8 *addr[], const size_t *len, u8 *mac)
{
 MD5_CTX ctx;
 size_t i;

 if (TEST_FAIL())
  return -1;

 MD5Init(&ctx);
 for (i = 0; i < num_elem; i++)
  MD5Update(&ctx, addr[i], len[i]);
 MD5Final(mac, &ctx);
 return 0;
}
