
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {void* v; void* h; } ;
typedef TYPE_2__ coord_t ;
struct TYPE_7__ {TYPE_2__ t_size; } ;
struct TYPE_9__ {TYPE_1__ el_terminal; } ;
typedef TYPE_3__ EditLine ;


 int T_co ;
 int T_li ;
 void* Val (int ) ;
 int terminal_alloc_display (TYPE_3__*) ;
 int terminal_free_display (TYPE_3__*) ;

__attribute__((used)) static int
terminal_rebuffer_display(EditLine *el)
{
 coord_t *c = &el->el_terminal.t_size;

 terminal_free_display(el);

 c->h = Val(T_co);
 c->v = Val(T_li);

 if (terminal_alloc_display(el) == -1)
  return -1;
 return 0;
}
