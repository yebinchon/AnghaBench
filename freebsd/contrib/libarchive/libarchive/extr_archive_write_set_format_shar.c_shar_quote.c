
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {int dummy; } ;


 int archive_strappend_char (struct archive_string*,char const) ;
 int archive_strcat (struct archive_string*,char*) ;
 int archive_strncat (struct archive_string*,char const*,size_t) ;
 size_t strcspn (char const*,char const*) ;

__attribute__((used)) static void
shar_quote(struct archive_string *buf, const char *str, int in_shell)
{
 static const char meta[] = "\n \t'`\";&<>()|*?{}[]\\$!#^~";
 size_t len;

 while (*str != '\0') {
  if ((len = strcspn(str, meta)) != 0) {
   archive_strncat(buf, str, len);
   str += len;
  } else if (*str == '\n') {
   if (in_shell)
    archive_strcat(buf, "\"\n\"");
   else
    archive_strcat(buf, "\\n");
   ++str;
  } else {
   archive_strappend_char(buf, '\\');
   archive_strappend_char(buf, *str);
   ++str;
  }
 }
}
