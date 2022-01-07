
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicx {int tabsiz; char* buf; size_t bufsiz; scalar_t__ doindent; scalar_t__ nprefix; scalar_t__ indent; scalar_t__ dont_init; } ;



void
uni_print_init(char *buf, size_t bufsiz, struct unicx *cx)
{
 if (cx->dont_init)
  return;

 cx->indent = 0;
 cx->nprefix = 0;
 cx->doindent = 0;
 if (cx->tabsiz == 0)
  cx->tabsiz = 4;
 cx->buf = buf;
 cx->bufsiz = bufsiz;
}
