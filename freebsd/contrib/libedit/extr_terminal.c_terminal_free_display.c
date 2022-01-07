
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int el_vdisplay; int el_display; } ;
typedef TYPE_1__ EditLine ;


 int terminal_free_buffer (int *) ;

__attribute__((used)) static void
terminal_free_display(EditLine *el)
{
 terminal_free_buffer(&el->el_display);
 terminal_free_buffer(&el->el_vdisplay);
}
