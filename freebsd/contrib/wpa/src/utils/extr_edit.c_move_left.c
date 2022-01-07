
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cmdbuf_pos ;
 int edit_redraw () ;

__attribute__((used)) static void move_left(void)
{
 if (cmdbuf_pos > 0) {
  cmdbuf_pos--;
  edit_redraw();
 }
}
