
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int edit_clear_line () ;
 int edit_redraw () ;
 int printf (char*,char const*,char,int) ;

__attribute__((used)) static void show_esc_buf(const char *esc_buf, char c, int i)
{
 edit_clear_line();
 printf("\rESC buffer '%s' c='%c' [%d]\n", esc_buf, c, i);
 edit_redraw();
}
