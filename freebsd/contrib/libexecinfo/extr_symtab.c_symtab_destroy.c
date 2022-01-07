
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t nsymbols; struct TYPE_4__* symbols; struct TYPE_4__* st_name; } ;
typedef TYPE_1__ symtab_t ;


 int free (TYPE_1__*) ;

void
symtab_destroy(symtab_t *s)
{
 if (s == ((void*)0))
  return;
 for (size_t i = 0; i < s->nsymbols; i++)
  free(s->symbols[i].st_name);
 free(s->symbols);
 free(s);
}
