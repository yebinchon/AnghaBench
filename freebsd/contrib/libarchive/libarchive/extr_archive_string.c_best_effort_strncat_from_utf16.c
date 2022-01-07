
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct archive_string_conv {int dummy; } ;
struct archive_string {size_t length; char* s; } ;


 int * archive_string_ensure (struct archive_string*,size_t) ;
 int utf16_to_unicode (int*,char const*,size_t,int) ;

__attribute__((used)) static int
best_effort_strncat_from_utf16(struct archive_string *as, const void *_p,
    size_t bytes, struct archive_string_conv *sc, int be)
{
 const char *utf16 = (const char *)_p;
 char *mbs;
 uint32_t uc;
 int n, ret;

 (void)sc;





 ret = 0;
 if (archive_string_ensure(as, as->length + bytes +1) == ((void*)0))
  return (-1);
 mbs = as->s + as->length;

 while ((n = utf16_to_unicode(&uc, utf16, bytes, be)) != 0) {
  if (n < 0) {
   n *= -1;
   ret = -1;
  }
  bytes -= n;
  utf16 += n;

  if (uc > 127) {

   *mbs++ = '?';
   ret = -1;
  } else
   *mbs++ = (char)uc;
 }
 as->length = mbs - as->s;
 as->s[as->length] = '\0';
 return (ret);
}
