
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uintfptr_t ;
struct pmcstat_symbol {void* ps_end; void* ps_start; int * ps_name; } ;
struct pmcstat_image {int pi_symcount; int * pi_symbols; } ;


 struct pmcstat_symbol* bsearch (void*,int *,int ,int,int ) ;
 int pmcstat_symbol_compare ;

struct pmcstat_symbol *
pmcstat_symbol_search(struct pmcstat_image *image, uintfptr_t addr)
{
 struct pmcstat_symbol sym;

 if (image->pi_symbols == ((void*)0))
  return (((void*)0));

 sym.ps_name = ((void*)0);
 sym.ps_start = addr;
 sym.ps_end = addr + 1;

 return (bsearch((void *) &sym, image->pi_symbols,
     image->pi_symcount, sizeof(struct pmcstat_symbol),
     pmcstat_symbol_compare));
}
