
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cmdbuf ;
 int cmdbuf_len ;
 int cmdbuf_pos ;
 int edit_clear_line () ;
 int edit_redraw () ;
 int os_memmove (char*,char*,int) ;

__attribute__((used)) static void delete_word(void)
{
 int pos;

 edit_clear_line();
 pos = cmdbuf_pos;
 while (pos > 0 && cmdbuf[pos - 1] == ' ')
  pos--;
 while (pos > 0 && cmdbuf[pos - 1] != ' ')
  pos--;
 os_memmove(cmdbuf + pos, cmdbuf + cmdbuf_pos, cmdbuf_len - cmdbuf_pos);
 cmdbuf_len -= cmdbuf_pos - pos;
 cmdbuf_pos = pos;
 edit_redraw();
}
