
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _memstream {int dummy; } ;


 int _citrus_prop_read_chr_common (struct _memstream*,int*,int) ;
 int _memstream_getc (struct _memstream*) ;
 int _memstream_ungetc (struct _memstream*,int) ;

__attribute__((used)) static int
_citrus_prop_read_character_common(struct _memstream * __restrict ms,
    int * __restrict result)
{
 int base, ch;

 ch = _memstream_getc(ms);
 if (ch != '\\')
  *result = ch;
 else {
  ch = _memstream_getc(ms);
  base = 16;
  switch (ch) {
  case 'a':
   *result = '\a';
   break;
  case 'b':
   *result = '\b';
   break;
  case 'f':
   *result = '\f';
   break;
  case 'n':
   *result = '\n';
   break;
  case 'r':
   *result = '\r';
   break;
  case 't':
   *result = '\t';
   break;
  case 'v':
   *result = '\v';
   break;
  case '0': case '1': case '2': case '3':
  case '4': case '5': case '6': case '7':
   _memstream_ungetc(ms, ch);
   base -= 8;

  case 'x':
   return (_citrus_prop_read_chr_common(ms, result, base));

  default:

   *result = ch;
  }
 }
 return (0);
}
