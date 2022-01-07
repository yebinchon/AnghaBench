
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct search_context {int * exidx_end; int * exidx_start; scalar_t__ addr; } ;
struct TYPE_7__ {int * value; } ;
typedef TYPE_1__ linker_symval_t ;
typedef TYPE_2__* linker_file_t ;
typedef scalar_t__ caddr_t ;
typedef int c_linker_sym_t ;
struct TYPE_8__ {scalar_t__ address; scalar_t__ size; int filename; } ;


 scalar_t__ LINKER_LOOKUP_SYMBOL (TYPE_2__*,char*,int *) ;
 scalar_t__ LINKER_SYMBOL_VALUES (TYPE_2__*,int ,TYPE_1__*) ;
 int panic (char*,int ) ;

__attribute__((used)) static int
module_search(linker_file_t lf, void *context)
{
 struct search_context *sc = context;
 linker_symval_t symval;
 c_linker_sym_t sym;

 if (lf->address <= (caddr_t)sc->addr &&
     (lf->address + lf->size) >= (caddr_t)sc->addr) {
  if ((LINKER_LOOKUP_SYMBOL(lf, "__exidx_start", &sym) == 0 ||
      LINKER_LOOKUP_SYMBOL(lf, "exidx_start", &sym) == 0) &&
      LINKER_SYMBOL_VALUES(lf, sym, &symval) == 0)
   sc->exidx_start = symval.value;

  if ((LINKER_LOOKUP_SYMBOL(lf, "__exidx_end", &sym) == 0 ||
      LINKER_LOOKUP_SYMBOL(lf, "exidx_end", &sym) == 0) &&
      LINKER_SYMBOL_VALUES(lf, sym, &symval) == 0)
   sc->exidx_end = symval.value;

  if (sc->exidx_start != ((void*)0) && sc->exidx_end != ((void*)0))
   return (1);
  panic("Invalid module %s, no unwind tables\n", lf->filename);
 }
 return (0);
}
