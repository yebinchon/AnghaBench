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
typedef  int /*<<< orphan*/  domain_enum ;

/* Variables and functions */
 int /*<<< orphan*/  GLOBAL_BLOCK ; 
 struct symbol* FUNC0 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/  const,struct symtab**) ; 
 struct symbol* FUNC1 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/  const,struct symtab**) ; 

struct symbol *
FUNC2 (const char *name,
		      const char *linkage_name,
		      const domain_enum domain,
		      struct symtab **symtab)
{
  struct symbol *sym;

  sym = FUNC1 (GLOBAL_BLOCK, name, linkage_name,
				   domain, symtab);
  if (sym != NULL)
    return sym;

  return FUNC0 (GLOBAL_BLOCK, name, linkage_name,
				     domain, symtab);
}