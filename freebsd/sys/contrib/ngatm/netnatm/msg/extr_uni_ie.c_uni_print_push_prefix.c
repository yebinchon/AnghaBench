
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicx {scalar_t__ nprefix; char const** prefix; } ;


 scalar_t__ PRINT_NPREFIX ;

void
uni_print_push_prefix(const char *prefix, struct unicx *cx)
{
 if (cx->nprefix < PRINT_NPREFIX)
  cx->prefix[cx->nprefix++] = prefix;
}
