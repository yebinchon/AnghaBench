
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum edit_key_code { ____Placeholder_edit_key_code } edit_key_code ;
 int EDIT_KEY_EOF ;


 int EDIT_KEY_NONE ;


 int search_backspace () ;
 int search_cancel () ;
 int search_char (int) ;
 int search_next () ;
 int search_stop () ;

__attribute__((used)) static enum edit_key_code search_key(enum edit_key_code c)
{
 switch (c) {
 case 132:
 case 136:
 case 130:
 case 129:
 case 131:
 case 133:
 case 139:
 case 138:
  search_stop();
  return c;
 case 134:
 case 128:
  search_cancel();
  return EDIT_KEY_EOF;
 case 137:
 case 140:
  search_backspace();
  break;
 case 135:
  search_next();
  break;
 default:
  if (c >= 32 && c <= 255)
   search_char(c);
  break;
 }

 return EDIT_KEY_NONE;
}
