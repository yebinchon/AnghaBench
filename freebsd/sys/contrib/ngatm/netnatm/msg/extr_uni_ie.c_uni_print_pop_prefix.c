
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicx {scalar_t__ nprefix; } ;



void
uni_print_pop_prefix(struct unicx *cx)
{
 if (cx->nprefix > 0)
  cx->nprefix--;
}
