
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macros {int level; scalar_t__ offset; int * macro; } ;


 int el_free (int ) ;

__attribute__((used)) static void
read_pop(struct macros *ma)
{
 int i;

 el_free(ma->macro[0]);
 for (i = 0; i < ma->level; i++)
  ma->macro[i] = ma->macro[i + 1];
 ma->level--;
 ma->offset = 0;
}
