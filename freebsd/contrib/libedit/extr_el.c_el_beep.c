
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EditLine ;


 int terminal_beep (int *) ;

void
el_beep(EditLine *el)
{

 terminal_beep(el);
}
