
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;
typedef int domain_enum ;


 struct block* BLOCK_SUPERBLOCK (struct block const*) ;
 struct block* block_static_block (struct block const*) ;
 struct symbol* lookup_symbol_aux_block (char const*,char const*,struct block const*,int const,struct symtab**) ;

__attribute__((used)) static struct symbol *
lookup_symbol_aux_local (const char *name, const char *linkage_name,
    const struct block *block,
    const domain_enum domain,
    struct symtab **symtab)
{
  struct symbol *sym;
  const struct block *static_block = block_static_block (block);



  if (static_block == ((void*)0))
    return ((void*)0);

  while (block != static_block)
    {
      sym = lookup_symbol_aux_block (name, linkage_name, block, domain,
         symtab);
      if (sym != ((void*)0))
 return sym;
      block = BLOCK_SUPERBLOCK (block);
    }



  return ((void*)0);
}
