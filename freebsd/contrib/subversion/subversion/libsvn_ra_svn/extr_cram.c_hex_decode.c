
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int APR_MD5_DIGESTSIZE ;
 int FALSE ;
 int TRUE ;
 int hex_to_int (char const) ;

__attribute__((used)) static svn_boolean_t hex_decode(unsigned char *hashval, const char *hexval)
{
  int i, h1, h2;

  for (i = 0; i < APR_MD5_DIGESTSIZE; i++)
    {
      h1 = hex_to_int(hexval[2 * i]);
      h2 = hex_to_int(hexval[2 * i + 1]);
      if (h1 == -1 || h2 == -1)
        return FALSE;
      hashval[i] = (unsigned char)((h1 << 4) | h2);
    }
  return TRUE;
}
