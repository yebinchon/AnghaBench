
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cmdbuf_len ;
 scalar_t__ cmdbuf_pos ;
 int edit_clear_line () ;
 int edit_redraw () ;

__attribute__((used)) static void clear_right(void)
{
 if (cmdbuf_pos == cmdbuf_len)
  return;

 edit_clear_line();
 cmdbuf_len = cmdbuf_pos;
 edit_redraw();
}
