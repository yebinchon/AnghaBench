
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ ARCHIVE_FAILED ;
 int archive_strappend_char (struct archive_string*,char const) ;
 int archive_string_empty (struct archive_string*) ;
 scalar_t__ extract_quotation (struct archive_string*,char const*) ;

__attribute__((used)) static ssize_t
get_argument(struct archive_string *as, const char *p)
{
 const char *s = p;

 archive_string_empty(as);


 while (*s != '\0' && *s == ' ')
  s++;

 while (*s != '\0' && *s != ' ') {
  if (*s == '\\') {
   if (s[1] != '\0') {
    archive_strappend_char(as, s[1]);
    s += 2;
   } else {
    s++;
    break;
   }
  } else if (*s == '"') {
   ssize_t q = extract_quotation(as, s);
   if (q < 0)
    return (ARCHIVE_FAILED);
   s += q;
  } else {
   archive_strappend_char(as, s[0]);
   s++;
  }
 }
 return ((ssize_t)(s - p));
}
