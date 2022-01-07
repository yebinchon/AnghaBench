
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string_conv {int dummy; } ;
struct archive_string {size_t length; char* s; } ;


 unsigned int UNICODE_R_CHAR ;
 int archive_be16enc (char*,unsigned int) ;
 int archive_le16enc (char*,unsigned int) ;
 int * archive_string_ensure (struct archive_string*,size_t) ;

__attribute__((used)) static int
best_effort_strncat_to_utf16(struct archive_string *as16, const void *_p,
    size_t length, struct archive_string_conv *sc, int bigendian)
{
 const char *s = (const char *)_p;
 char *utf16;
 size_t remaining;
 int ret;

 (void)sc;





 ret = 0;
 remaining = length;

 if (archive_string_ensure(as16,
     as16->length + (length + 1) * 2) == ((void*)0))
  return (-1);

 utf16 = as16->s + as16->length;
 while (remaining--) {
  unsigned c = *s++;
  if (c > 127) {

   c = UNICODE_R_CHAR;
   ret = -1;
  }
  if (bigendian)
   archive_be16enc(utf16, c);
  else
   archive_le16enc(utf16, c);
  utf16 += 2;
 }
 as16->length = utf16 - as16->s;
 as16->s[as16->length] = 0;
 as16->s[as16->length+1] = 0;
 return (ret);
}
