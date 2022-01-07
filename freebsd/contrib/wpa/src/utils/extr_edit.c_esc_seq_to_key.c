
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum edit_key_code { ____Placeholder_edit_key_code } edit_key_code ;


 int EDIT_KEY_NONE ;
 int atoi (char*) ;
 int edit_clear_line () ;
 int edit_redraw () ;
 int esc_seq_to_key1 (int,int,char) ;
 int esc_seq_to_key2 (int,int,char) ;
 char* os_strchr (char*,char) ;
 int printf (char*,char*) ;

__attribute__((used)) static enum edit_key_code esc_seq_to_key(char *seq)
{
 char last, *pos;
 int param1 = -1, param2 = -1;
 enum edit_key_code ret = EDIT_KEY_NONE;

 last = '\0';
 for (pos = seq; *pos; pos++)
  last = *pos;

 if (seq[1] >= '0' && seq[1] <= '9') {
  param1 = atoi(&seq[1]);
  pos = os_strchr(seq, ';');
  if (pos)
   param2 = atoi(pos + 1);
 }

 if (seq[0] == '[')
  ret = esc_seq_to_key1(param1, param2, last);
 else if (seq[0] == 'O')
  ret = esc_seq_to_key2(param1, param2, last);

 if (ret != EDIT_KEY_NONE)
  return ret;

 edit_clear_line();
 printf("\rUnknown escape sequence '%s'\n", seq);
 edit_redraw();
 return EDIT_KEY_NONE;
}
