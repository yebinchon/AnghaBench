
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word32 ;
typedef int u8 ;
typedef int Hmac ;


 scalar_t__ TEST_FAIL () ;
 scalar_t__ wc_HmacFinal (int *,int *) ;
 scalar_t__ wc_HmacSetKey (int *,int,int const*,int ) ;
 scalar_t__ wc_HmacUpdate (int *,int const*,size_t const) ;

__attribute__((used)) static int wolfssl_hmac_vector(int type, const u8 *key,
          size_t key_len, size_t num_elem,
          const u8 *addr[], const size_t *len, u8 *mac,
          unsigned int mdlen)
{
 Hmac hmac;
 size_t i;

 (void) mdlen;

 if (TEST_FAIL())
  return -1;

 if (wc_HmacSetKey(&hmac, type, key, (word32) key_len) != 0)
  return -1;
 for (i = 0; i < num_elem; i++)
  if (wc_HmacUpdate(&hmac, addr[i], len[i]) != 0)
   return -1;
 if (wc_HmacFinal(&hmac, mac) != 0)
  return -1;
 return 0;
}
