
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pmcstat_symbol {scalar_t__ ps_start; scalar_t__ ps_end; int ps_name; } ;
struct pmcstat_image {size_t pi_symcount; scalar_t__ pi_vaddr; struct pmcstat_symbol* pi_symbols; } ;
struct TYPE_7__ {size_t sh_size; size_t sh_entsize; int sh_link; } ;
struct TYPE_6__ {scalar_t__ st_shndx; scalar_t__ st_value; scalar_t__ st_size; int st_name; int st_info; } ;
typedef TYPE_1__ GElf_Sym ;
typedef TYPE_2__ GElf_Shdr ;
typedef int Elf_Scn ;
typedef int Elf_Data ;
typedef int Elf ;


 scalar_t__ GELF_ST_TYPE (int ) ;
 scalar_t__ STN_UNDEF ;
 scalar_t__ STT_FUNC ;
 int assert (int) ;
 int * elf_getdata (int *,int *) ;
 char* elf_strptr (int *,int ,int ) ;
 TYPE_1__* gelf_getsym (int *,int,TYPE_1__*) ;
 int pmcstat_string_intern (char*) ;
 int pmcstat_symbol_compare ;
 scalar_t__ pmcstat_symbol_search (struct pmcstat_image*,scalar_t__) ;
 int qsort (struct pmcstat_symbol*,size_t,int,int ) ;
 void* reallocarray (struct pmcstat_symbol*,size_t,int) ;

void
pmcstat_image_add_symbols(struct pmcstat_image *image, Elf *e,
    Elf_Scn *scn, GElf_Shdr *sh)
{
 int firsttime;
 size_t n, newsyms, nshsyms, nfuncsyms;
 struct pmcstat_symbol *symptr;
 char *fnname;
 GElf_Sym sym;
 Elf_Data *data;

 if ((data = elf_getdata(scn, ((void*)0))) == ((void*)0))
  return;






 nshsyms = sh->sh_size / sh->sh_entsize;
 for (n = nfuncsyms = 0; n < nshsyms; n++) {
  if (gelf_getsym(data, (int) n, &sym) != &sym)
   return;
  if (GELF_ST_TYPE(sym.st_info) == STT_FUNC)
   nfuncsyms++;
 }

 if (nfuncsyms == 0)
  return;




 firsttime = image->pi_symbols == ((void*)0);
 symptr = reallocarray(image->pi_symbols,
     image->pi_symcount + nfuncsyms, sizeof(*symptr));
 if (symptr == image->pi_symbols)
  return;
 image->pi_symbols = symptr;




 symptr += image->pi_symcount;

 for (n = newsyms = 0; n < nshsyms; n++) {
  if (gelf_getsym(data, (int) n, &sym) != &sym)
   return;
  if (GELF_ST_TYPE(sym.st_info) != STT_FUNC)
   continue;

  if (sym.st_shndx == STN_UNDEF)
   continue;

  if (!firsttime && pmcstat_symbol_search(image, sym.st_value))
   continue;

  if ((fnname = elf_strptr(e, sh->sh_link, sym.st_name))
      == ((void*)0))
   continue;
  symptr->ps_name = pmcstat_string_intern(fnname);
  symptr->ps_start = sym.st_value - image->pi_vaddr;
  symptr->ps_end = symptr->ps_start + sym.st_size;

  symptr++;
  newsyms++;
 }

 image->pi_symcount += newsyms;
 if (image->pi_symcount == 0)
  return;

 assert(newsyms <= nfuncsyms);




 if (newsyms < nfuncsyms)
  image->pi_symbols = reallocarray(image->pi_symbols,
      image->pi_symcount, sizeof(*symptr));




 qsort(image->pi_symbols, image->pi_symcount, sizeof(*symptr),
     pmcstat_symbol_compare);






 for (symptr = image->pi_symbols;
      symptr < image->pi_symbols + (image->pi_symcount - 1);
      symptr++)
  if (symptr->ps_start == symptr->ps_end)
   symptr->ps_end = (symptr+1)->ps_start;
}
