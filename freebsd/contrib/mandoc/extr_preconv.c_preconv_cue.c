
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {char* buf; size_t sz; } ;


 int MPARSE_LATIN1 ;
 int MPARSE_UTF8 ;
 char* memchr (char const*,char,size_t) ;
 scalar_t__ memcmp (char const*,char*,int) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

int
preconv_cue(const struct buf *b, size_t offset)
{
 const char *ln, *eoln, *eoph;
 size_t sz, phsz;

 ln = b->buf + offset;
 sz = b->sz - offset;



 if (((void*)0) == (eoln = memchr(ln, '\n', sz)))
  eoln = ln + sz;



 if ((sz = (size_t)(eoln - ln)) < 10 ||
     memcmp(ln, ".\\\" -*-", 7) || memcmp(eoln - 3, "-*-", 3))
  return MPARSE_UTF8 | MPARSE_LATIN1;



 ln += 7;
 sz -= 10;

 while (sz > 0) {
  while (sz > 0 && ' ' == *ln) {
   ln++;
   sz--;
  }
  if (0 == sz)
   break;



  if (((void*)0) == (eoph = memchr(ln, ';', sz)))
   eoph = eoln - 3;
  else
   eoph++;



  if ((phsz = eoph - ln) < 7 ||
      strncasecmp(ln, "coding:", 7)) {
   sz -= phsz;
   ln += phsz;
   continue;
  }

  sz -= 7;
  ln += 7;

  while (sz > 0 && ' ' == *ln) {
   ln++;
   sz--;
  }
  if (0 == sz)
   return 0;



  if (phsz > 4 && !strncasecmp(ln, "utf-8", 5))
   return MPARSE_UTF8;
  if (phsz > 10 && !strncasecmp(ln, "iso-latin-1", 11))
   return MPARSE_LATIN1;
  return 0;
 }
 return MPARSE_UTF8 | MPARSE_LATIN1;
}
