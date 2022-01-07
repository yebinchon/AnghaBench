
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ws_row; } ;


 TYPE_1__* maxsize ;
 int tty_maxsize_update () ;
 scalar_t__ use_xdialog ;
 int x11_maxsize_update () ;

int
dialog_maxrows(void)
{

 if (use_xdialog && maxsize == ((void*)0))
  x11_maxsize_update();
 else if (!use_xdialog)
  tty_maxsize_update();
 return (maxsize->ws_row);
}
