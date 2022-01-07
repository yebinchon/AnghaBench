
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testlist_alias_t {int dummy; } ;


 struct testlist_alias_t const* cfg_aliases ;

void
tinytest_set_aliases(const struct testlist_alias_t *aliases)
{
 cfg_aliases = aliases;
}
