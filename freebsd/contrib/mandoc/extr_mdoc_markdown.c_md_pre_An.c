
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct roff_node {int sec; TYPE_2__* norm; } ;
struct TYPE_3__ {int auth; } ;
struct TYPE_4__ {TYPE_1__ An; } ;




 int MD_An_nosplit ;
 int MD_An_split ;
 int MD_br ;
 int SEC_AUTHORS ;
 int outflags ;

__attribute__((used)) static int
md_pre_An(struct roff_node *n)
{
 switch (n->norm->An.auth) {
 case 128:
  outflags &= ~MD_An_nosplit;
  outflags |= MD_An_split;
  return 0;
 case 129:
  outflags &= ~MD_An_split;
  outflags |= MD_An_nosplit;
  return 0;
 default:
  if (outflags & MD_An_split)
   outflags |= MD_br;
  else if (n->sec == SEC_AUTHORS &&
      ! (outflags & MD_An_nosplit))
   outflags |= MD_An_split;
  return 1;
 }
}
