
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int **** wint_t ;
struct TYPE_6__ {int v; scalar_t__ h; } ;
typedef TYPE_2__ coord_t ;
struct TYPE_5__ {TYPE_2__ t_size; } ;
struct TYPE_7__ {TYPE_1__ el_terminal; } ;
typedef TYPE_3__ EditLine ;


 void* el_calloc (size_t,int) ;
 int el_free (int ******) ;

__attribute__((used)) static wint_t **
terminal_alloc_buffer(EditLine *el)
{
 wint_t **b;
 coord_t *c = &el->el_terminal.t_size;
 int i;

 b = el_calloc((size_t)(c->v + 1), sizeof(*b));
 if (b == ((void*)0))
  return ((void*)0);
 for (i = 0; i < c->v; i++) {
  b[i] = el_calloc((size_t)(c->h + 1), sizeof(**b));
  if (b[i] == ((void*)0)) {
   while (--i >= 0)
    el_free(b[i]);
   el_free(b);
   return ((void*)0);
  }
 }
 b[c->v] = ((void*)0);
 return b;
}
