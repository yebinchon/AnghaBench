
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APR_MD5_DIGESTSIZE ;
 char int_to_hex (unsigned char const) ;

__attribute__((used)) static void hex_encode(char *hexval, const unsigned char *hashval)
{
  int i;

  for (i = 0; i < APR_MD5_DIGESTSIZE; i++)
    {
      hexval[2 * i] = int_to_hex((hashval[i] >> 4) & 0xf);
      hexval[2 * i + 1] = int_to_hex(hashval[i] & 0xf);
    }
}
