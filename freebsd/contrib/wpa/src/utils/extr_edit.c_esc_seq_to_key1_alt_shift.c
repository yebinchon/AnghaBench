
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum edit_key_code { ____Placeholder_edit_key_code } edit_key_code ;


 int EDIT_KEY_ALT_SHIFT_DOWN ;
 int EDIT_KEY_ALT_SHIFT_LEFT ;
 int EDIT_KEY_ALT_SHIFT_RIGHT ;
 int EDIT_KEY_ALT_SHIFT_UP ;
 int EDIT_KEY_NONE ;

__attribute__((used)) static enum edit_key_code esc_seq_to_key1_alt_shift(char last)
{
 switch (last) {
 case 'A':
  return EDIT_KEY_ALT_SHIFT_UP;
 case 'B':
  return EDIT_KEY_ALT_SHIFT_DOWN;
 case 'C':
  return EDIT_KEY_ALT_SHIFT_RIGHT;
 case 'D':
  return EDIT_KEY_ALT_SHIFT_LEFT;
 default:
  return EDIT_KEY_NONE;
 }
}
