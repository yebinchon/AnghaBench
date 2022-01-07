
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {char* s; } ;


 unsigned char ATTR_NAME_IS_UTF ;
 size_t archive_strlen (struct archive_string*) ;

__attribute__((used)) static int
cab_convert_path_separator_1(struct archive_string *fn, unsigned char attr)
{
 size_t i;
 int mb;


 mb = 0;
 for (i = 0; i < archive_strlen(fn); i++) {
  if (fn->s[i] == '\\') {
   if (mb) {


    break;
   }
   fn->s[i] = '/';
   mb = 0;
  } else if ((fn->s[i] & 0x80) && !(attr & ATTR_NAME_IS_UTF))
   mb = 1;
  else
   mb = 0;
 }
 if (i == archive_strlen(fn))
  return (0);
 return (-1);
}
