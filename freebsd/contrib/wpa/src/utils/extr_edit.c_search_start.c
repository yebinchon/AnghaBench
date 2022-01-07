
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int edit_clear_line () ;
 char* search_buf ;
 int search_redraw () ;
 scalar_t__ search_skip ;

__attribute__((used)) static void search_start(void)
{
 edit_clear_line();
 search_buf[0] = '\0';
 search_skip = 0;
 search_redraw();
}
