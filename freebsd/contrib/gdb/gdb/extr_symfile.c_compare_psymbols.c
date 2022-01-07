
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_symbol {int dummy; } ;


 int SYMBOL_NATURAL_NAME (struct partial_symbol* const) ;
 int strcmp_iw_ordered (int ,int ) ;

__attribute__((used)) static int
compare_psymbols (const void *s1p, const void *s2p)
{
  struct partial_symbol *const *s1 = s1p;
  struct partial_symbol *const *s2 = s2p;

  return strcmp_iw_ordered (SYMBOL_NATURAL_NAME (*s1),
       SYMBOL_NATURAL_NAME (*s2));
}
