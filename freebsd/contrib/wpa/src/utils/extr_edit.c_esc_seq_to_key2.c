
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum edit_key_code { ____Placeholder_edit_key_code } edit_key_code ;


 int EDIT_KEY_END ;
 int EDIT_KEY_F1 ;
 int EDIT_KEY_F2 ;
 int EDIT_KEY_F3 ;
 int EDIT_KEY_F4 ;
 int EDIT_KEY_HOME ;
 int EDIT_KEY_NONE ;

__attribute__((used)) static enum edit_key_code esc_seq_to_key2(int param1, int param2, char last)
{


 if (param1 >= 0 || param2 >= 0)
  return EDIT_KEY_NONE;

 switch (last) {
 case 'F':
  return EDIT_KEY_END;
 case 'H':
  return EDIT_KEY_HOME;
 case 'P':
  return EDIT_KEY_F1;
 case 'Q':
  return EDIT_KEY_F2;
 case 'R':
  return EDIT_KEY_F3;
 case 'S':
  return EDIT_KEY_F4;
 default:
  return EDIT_KEY_NONE;
 }
}
