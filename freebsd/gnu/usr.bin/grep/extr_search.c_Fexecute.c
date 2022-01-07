
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct kwsmatch {size_t* size; } ;
typedef int mbstate_t ;


 scalar_t__ Fimbexec (char const*,size_t,size_t*,int) ;
 int MB_CUR_MAX ;
 scalar_t__ WCHAR (unsigned char) ;
 char eolbyte ;
 scalar_t__ f_i_multibyte ;
 scalar_t__ iswalnum (int) ;
 int kwset ;
 size_t kwsexec (int ,char const*,size_t,struct kwsmatch*) ;
 scalar_t__ match_lines ;
 scalar_t__ match_words ;
 size_t mbrlen (char const*,int,int *) ;
 int mbtowc (int*,char const*,int) ;
 char* memchr (char const*,char,int) ;
 int memset (int *,char,int) ;
 scalar_t__ using_utf8 ;

__attribute__((used)) static size_t
Fexecute (char const *buf, size_t size, size_t *match_size, int exact)
{
  register char const *beg, *try, *end;
  register size_t len;
  char eol = eolbyte;
  struct kwsmatch kwsmatch;
  size_t ret_val;







  for (beg = buf; beg <= buf + size; ++beg)
    {
      size_t offset;
      offset = kwsexec (kwset, beg, buf + size - beg, &kwsmatch);

      if (offset == (size_t) -1)
 goto failure;
      beg += offset;
      len = kwsmatch.size[0];
      if (exact && !match_words)
 goto success_in_beg_and_len;
      if (match_lines)
 {
   if (beg > buf && beg[-1] != eol)
     goto next_char;
   if (beg + len < buf + size && beg[len] != eol)
     goto next_char;
   goto success;
 }
      else if (match_words)
 {
   while (1)
     {
       int word_match = 0;
       if (beg > buf)
  {
    if (WCHAR ((unsigned char) beg[-1]))
      goto next_char;
  }
  if (beg + len >= buf + size || !WCHAR ((unsigned char) beg[len]))
    word_match = 1;
       if (word_match)
  {
    if (!exact)

      goto success;
    else

      goto success_in_beg_and_len;
  }
       if (len > 0)
  {

    --len;
    offset = kwsexec (kwset, beg, len, &kwsmatch);

    if (offset == -1)
      goto next_char;
    beg += offset;
    len = kwsmatch.size[0];
  }
     }
 }
      else
 goto success;
next_char:;
    }

 failure:
  return -1;

 success:
  end = memchr (beg + len, eol, (buf + size) - (beg + len));

  end++;
  while (buf < beg && beg[-1] != eol)
    --beg;
  len = end - beg;


 success_in_beg_and_len:
  *match_size = len;
  return beg - buf;
}
