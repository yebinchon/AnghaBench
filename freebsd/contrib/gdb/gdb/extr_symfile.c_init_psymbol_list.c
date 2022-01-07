
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct partial_symbol {int dummy; } ;
struct TYPE_4__ {int size; struct partial_symbol** list; struct partial_symbol** next; } ;
struct TYPE_3__ {int size; struct partial_symbol** list; struct partial_symbol** next; } ;
struct objfile {TYPE_2__ static_psymbols; int md; TYPE_1__ global_psymbols; } ;


 int xmfree (int ,struct partial_symbol**) ;
 scalar_t__ xmmalloc (int ,int) ;

void
init_psymbol_list (struct objfile *objfile, int total_symbols)
{


  if (objfile->global_psymbols.list)
    {
      xmfree (objfile->md, objfile->global_psymbols.list);
    }
  if (objfile->static_psymbols.list)
    {
      xmfree (objfile->md, objfile->static_psymbols.list);
    }





  objfile->global_psymbols.size = total_symbols / 10;
  objfile->static_psymbols.size = total_symbols / 10;

  if (objfile->global_psymbols.size > 0)
    {
      objfile->global_psymbols.next =
 objfile->global_psymbols.list = (struct partial_symbol **)
 xmmalloc (objfile->md, (objfile->global_psymbols.size
    * sizeof (struct partial_symbol *)));
    }
  if (objfile->static_psymbols.size > 0)
    {
      objfile->static_psymbols.next =
 objfile->static_psymbols.list = (struct partial_symbol **)
 xmmalloc (objfile->md, (objfile->static_psymbols.size
    * sizeof (struct partial_symbol *)));
    }
}
