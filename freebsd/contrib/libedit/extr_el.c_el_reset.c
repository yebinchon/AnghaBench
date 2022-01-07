
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EditLine ;


 int ch_reset (int *) ;
 int tty_cookedmode (int *) ;

void
el_reset(EditLine *el)
{

 tty_cookedmode(el);
 ch_reset(el);
}
