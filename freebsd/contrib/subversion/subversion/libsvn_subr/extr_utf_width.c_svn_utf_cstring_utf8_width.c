
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint32_t ;


 int mk_wcwidth (int) ;
 int svn_utf__cstring_is_valid (char const*) ;

int
svn_utf_cstring_utf8_width(const char *cstr)
{
  int width = 0;

  if (*cstr == '\0')
    return 0;


  if (!svn_utf__cstring_is_valid(cstr))
    return -1;




  while (*cstr)
    {
      apr_uint32_t ucs;
      int nbytes;
      int lead_mask;
      int w;
      int i;

      if ((*cstr & 0x80) == 0)
        {
          nbytes = 1;
          lead_mask = 0x7f;
        }
      else if ((*cstr & 0xe0) == 0xc0)
        {
          nbytes = 2;
          lead_mask = 0x1f;
        }
      else if ((*cstr & 0xf0) == 0xe0)
        {
          nbytes = 3;
          lead_mask = 0x0f;
        }
      else if ((*cstr & 0xf8) == 0xf0)
        {
          nbytes = 4;
          lead_mask = 0x07;
        }
      else
        {

          return -1;
        }


      ucs = (apr_uint32_t)(*cstr & lead_mask);


      for (i = 1; i < nbytes; i++)
        {
          ucs <<= 6;
          ucs |= (cstr[i] & 0x3f);
        }

      cstr += nbytes;


      w = mk_wcwidth(ucs);
      if (w == -1)
        return -1;
      width += w;
    }

  return width;
}
