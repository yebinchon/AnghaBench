
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cmdbuf ;
 int cmdbuf_pos ;
 int edit_redraw () ;

__attribute__((used)) static void move_word_left(void)
{
 while (cmdbuf_pos > 0 && cmdbuf[cmdbuf_pos - 1] == ' ')
  cmdbuf_pos--;
 while (cmdbuf_pos > 0 && cmdbuf[cmdbuf_pos - 1] != ' ')
  cmdbuf_pos--;
 edit_redraw();
}
