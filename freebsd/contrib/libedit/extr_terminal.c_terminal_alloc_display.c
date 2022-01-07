
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * el_vdisplay; int * el_display; } ;
typedef TYPE_1__ EditLine ;


 void* terminal_alloc_buffer (TYPE_1__*) ;
 int terminal_free_display (TYPE_1__*) ;

__attribute__((used)) static int
terminal_alloc_display(EditLine *el)
{
 el->el_display = terminal_alloc_buffer(el);
 if (el->el_display == ((void*)0))
  goto done;
 el->el_vdisplay = terminal_alloc_buffer(el);
 if (el->el_vdisplay == ((void*)0))
  goto done;
 return 0;
done:
 terminal_free_display(el);
 return -1;
}
