
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_node {int tok; } ;
struct TYPE_2__ {char* suffix; } ;


 int MD_nl ;
 int MD_spc ;
 TYPE_1__* md_act (int ) ;
 int md_word (char const*) ;
 int outflags ;

__attribute__((used)) static void
md_post_word(struct roff_node *n)
{
 const char *suffix;

 if ((suffix = md_act(n->tok)->suffix) != ((void*)0)) {
  outflags &= ~(MD_spc | MD_nl);
  md_word(suffix);
 }
}
