
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_meta {char* title; char* msec; char* vol; char* arch; char* os; char* date; TYPE_1__* first; } ;
struct TYPE_2__ {int child; } ;


 int MD_Sm ;
 int MD_sp ;
 int MD_spc ;
 int md_nodelist (int ) ;
 int md_word (char*) ;
 int outflags ;
 int putchar (char) ;

void
markdown_mdoc(void *arg, const struct roff_meta *mdoc)
{
 outflags = MD_Sm;
 md_word(mdoc->title);
 if (mdoc->msec != ((void*)0)) {
  outflags &= ~MD_spc;
  md_word("(");
  md_word(mdoc->msec);
  md_word(")");
 }
 md_word("-");
 md_word(mdoc->vol);
 if (mdoc->arch != ((void*)0)) {
  md_word("(");
  md_word(mdoc->arch);
  md_word(")");
 }
 outflags |= MD_sp;

 md_nodelist(mdoc->first->child);

 outflags |= MD_sp;
 md_word(mdoc->os);
 md_word("-");
 md_word(mdoc->date);
 putchar('\n');
}
