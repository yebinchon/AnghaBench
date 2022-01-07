
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ uint32_t ;
struct archive_string_conv {int dummy; } ;
struct archive_string {size_t length; char* s; int buffer_length; } ;
typedef int shift_state ;
typedef int mbstate_t ;


 char* MB_CUR_MAX ;
 int _utf8_to_unicode (scalar_t__*,char const*,size_t) ;
 int * archive_string_ensure (struct archive_string*,size_t) ;
 int memset (int *,int ,int) ;
 scalar_t__ wcrtomb (char*,int,int *) ;
 scalar_t__ wctomb (char*,int) ;

__attribute__((used)) static int
strncat_from_utf8_libarchive2(struct archive_string *as,
    const void *_p, size_t len, struct archive_string_conv *sc)
{
 const char *s;
 int n;
 char *p;
 char *end;
 uint32_t unicode;






 wctomb(((void*)0), L'\0');

 (void)sc;





 if (archive_string_ensure(as, as->length + len + 1) == ((void*)0))
  return (-1);

 s = (const char *)_p;
 p = as->s + as->length;
 end = as->s + as->buffer_length - MB_CUR_MAX -1;
 while ((n = _utf8_to_unicode(&unicode, s, len)) != 0) {
  wchar_t wc;

  if (p >= end) {
   as->length = p - as->s;

   if (archive_string_ensure(as,
       as->length + len * 2 + 1) == ((void*)0))
    return (-1);
   p = as->s + as->length;
   end = as->s + as->buffer_length - MB_CUR_MAX -1;
  }





  if (n < 0) {
   n *= -1;
   wc = L'?';
  } else
   wc = (wchar_t)unicode;

  s += n;
  len -= n;






  n = (int)wctomb(p, wc);

  if (n == -1)
   return (-1);
  p += n;
 }
 as->length = p - as->s;
 as->s[as->length] = '\0';
 return (0);
}
