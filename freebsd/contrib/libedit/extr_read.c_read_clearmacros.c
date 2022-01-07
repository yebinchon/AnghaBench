
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macros {scalar_t__ level; scalar_t__ offset; int * macro; } ;


 int el_free (int ) ;

__attribute__((used)) static void
read_clearmacros(struct macros *ma)
{
 while (ma->level >= 0)
  el_free(ma->macro[ma->level--]);
 ma->offset = 0;
}
