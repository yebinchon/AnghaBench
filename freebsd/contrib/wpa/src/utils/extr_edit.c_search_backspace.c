
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t os_strlen (char*) ;
 char* search_buf ;
 int search_redraw () ;
 scalar_t__ search_skip ;

__attribute__((used)) static void search_backspace(void)
{
 size_t len;
 len = os_strlen(search_buf);
 if (len == 0)
  return;
 search_buf[len - 1] = '\0';
 search_skip = 0;
 search_redraw();
}
