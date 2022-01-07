
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cmdbuf ;
 size_t cmdbuf_len ;
 size_t cmdbuf_pos ;
 int edit_redraw () ;

__attribute__((used)) static void move_word_right(void)
{
 while (cmdbuf_pos < cmdbuf_len && cmdbuf[cmdbuf_pos] == ' ')
  cmdbuf_pos++;
 while (cmdbuf_pos < cmdbuf_len && cmdbuf[cmdbuf_pos] != ' ')
  cmdbuf_pos++;
 edit_redraw();
}
