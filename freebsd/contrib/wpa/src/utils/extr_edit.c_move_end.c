
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmdbuf_len ;
 int cmdbuf_pos ;
 int edit_redraw () ;

__attribute__((used)) static void move_end(void)
{
 cmdbuf_pos = cmdbuf_len;
 edit_redraw();
}
