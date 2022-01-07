
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int delwin (int *) ;

void
tui_delete_win (WINDOW * window)
{
  if (window != (WINDOW *) ((void*)0))
    delwin (window);

  return;
}
