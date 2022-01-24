#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;
typedef  int /*<<< orphan*/  domain_enum ;

/* Variables and functions */
 struct block* FUNC0 (struct block const*) ; 
 struct block* FUNC1 (struct block const*) ; 
 struct symbol* FUNC2 (char const*,char const*,struct block const*,int /*<<< orphan*/  const,struct symtab**) ; 

__attribute__((used)) static struct symbol *
FUNC3 (const char *name, const char *linkage_name,
			 const struct block *block,
			 const domain_enum domain,
			 struct symtab **symtab)
{
  struct symbol *sym;
  const struct block *static_block = FUNC1 (block);

  /* Check if either no block is specified or it's a global block.  */

  if (static_block == NULL)
    return NULL;

  while (block != static_block)
    {
      sym = FUNC2 (name, linkage_name, block, domain,
				     symtab);
      if (sym != NULL)
	return sym;
      block = FUNC0 (block);
    }

  /* We've reached the static block without finding a result.  */

  return NULL;
}