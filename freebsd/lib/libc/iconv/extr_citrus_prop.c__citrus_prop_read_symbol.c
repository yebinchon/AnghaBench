
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _memstream {int dummy; } ;


 int EINVAL ;
 scalar_t__ _bcs_isalnum (int) ;
 int _memstream_getc (struct _memstream*) ;
 int _memstream_ungetc (struct _memstream*,int) ;

__attribute__((used)) static __inline int
_citrus_prop_read_symbol(struct _memstream * __restrict ms,
    char * __restrict s, size_t n)
{
 int ch;
 size_t m;

 for (m = 0; m < n; ++m) {
  ch = _memstream_getc(ms);
  if (ch != '_' && _bcs_isalnum(ch) == 0)
   goto name_found;
  s[m] = ch;
 }
 ch = _memstream_getc(ms);
 if (ch == '_' || _bcs_isalnum(ch) != 0)
  return (EINVAL);

name_found:
 _memstream_ungetc(ms, ch);
 s[m] = '\0';

 return (0);
}
