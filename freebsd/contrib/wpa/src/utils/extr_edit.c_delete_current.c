
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cmdbuf ;
 scalar_t__ cmdbuf_len ;
 scalar_t__ cmdbuf_pos ;
 int edit_clear_line () ;
 int edit_redraw () ;
 int os_memmove (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void delete_current(void)
{
 if (cmdbuf_pos == cmdbuf_len)
  return;

 edit_clear_line();
 os_memmove(cmdbuf + cmdbuf_pos, cmdbuf + cmdbuf_pos + 1,
     cmdbuf_len - cmdbuf_pos);
 cmdbuf_len--;
 edit_redraw();
}
