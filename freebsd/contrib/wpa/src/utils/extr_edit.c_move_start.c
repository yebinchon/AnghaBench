
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cmdbuf_pos ;
 int edit_redraw () ;

__attribute__((used)) static void move_start(void)
{
 cmdbuf_pos = 0;
 edit_redraw();
}
