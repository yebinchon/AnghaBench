
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 int chars_per_line ;
 int lines_per_page ;
 int rl_get_screen_size (int *,int*) ;
 int rl_set_screen_size (int,int) ;

__attribute__((used)) static void
set_screen_size (void)
{
  int rows = lines_per_page;
  int cols = chars_per_line;

  if (rows <= 0)
    rows = INT_MAX;

  if (cols <= 0)
    rl_get_screen_size (((void*)0), &cols);


  rl_set_screen_size (rows, cols);
}
