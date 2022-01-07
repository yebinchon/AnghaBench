
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {int dummy; } ;
typedef int ssize_t ;


 int ARCHIVE_FAILED ;
 int archive_strappend_char (struct archive_string*,char const) ;

__attribute__((used)) static ssize_t
extract_quotation(struct archive_string *as, const char *p)
{
 const char *s;

 for (s = p + 1; *s;) {
  if (*s == '\\') {
   if (s[1] != '\0') {
    archive_strappend_char(as, s[1]);
    s += 2;
   } else
    s++;
  } else if (*s == '"')
   break;
  else {
   archive_strappend_char(as, s[0]);
   s++;
  }
 }
 if (*s != '"')
  return (ARCHIVE_FAILED);
 return ((ssize_t)(s + 1 - p));
}
