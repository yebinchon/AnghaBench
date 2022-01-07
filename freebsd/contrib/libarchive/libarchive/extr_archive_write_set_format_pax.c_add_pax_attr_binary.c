
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct archive_string {int dummy; } ;


 int archive_array_append (struct archive_string*,char const*,size_t) ;
 int archive_strappend_char (struct archive_string*,char) ;
 int archive_strcat (struct archive_string*,char const*) ;
 char const* format_int (char*,int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
add_pax_attr_binary(struct archive_string *as, const char *key,
      const char *value, size_t value_len)
{
 int digits, i, len, next_ten;
 char tmp[1 + 3 * sizeof(int)];





 len = 1 + (int)strlen(key) + 1 + (int)value_len + 1;







 next_ten = 1;
 digits = 0;
 i = len;
 while (i > 0) {
  i = i / 10;
  digits++;
  next_ten = next_ten * 10;
 }






 if (len + digits >= next_ten)
  digits++;


 tmp[sizeof(tmp) - 1] = 0;
 archive_strcat(as, format_int(tmp + sizeof(tmp) - 1, len + digits));
 archive_strappend_char(as, ' ');
 archive_strcat(as, key);
 archive_strappend_char(as, '=');
 archive_array_append(as, value, value_len);
 archive_strappend_char(as, '\n');
}
