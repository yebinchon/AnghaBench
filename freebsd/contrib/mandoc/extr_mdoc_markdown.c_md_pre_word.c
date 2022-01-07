
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_node {int tok; } ;
struct TYPE_2__ {char* prefix; } ;


 int MD_spc ;
 TYPE_1__* md_act (int ) ;
 int md_word (char const*) ;
 int outflags ;

__attribute__((used)) static int
md_pre_word(struct roff_node *n)
{
 const char *prefix;

 if ((prefix = md_act(n->tok)->prefix) != ((void*)0)) {
  md_word(prefix);
  outflags &= ~MD_spc;
 }
 return 1;
}
