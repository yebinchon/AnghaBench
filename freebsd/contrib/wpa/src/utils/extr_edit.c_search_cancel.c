
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int edit_redraw () ;
 char* search_buf ;
 int search_clear () ;

__attribute__((used)) static void search_cancel(void)
{
 search_buf[0] = '\0';
 search_clear();
 edit_redraw();
}
