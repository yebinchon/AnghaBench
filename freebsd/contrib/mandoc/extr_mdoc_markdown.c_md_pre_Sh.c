
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int type; int tok; int sec; } ;


 int MDOC_Sh ;
 int MD_An_nosplit ;
 int MD_An_split ;
 int MD_sp ;



 int SEC_AUTHORS ;
 int md_rawword (char*) ;
 int outflags ;

__attribute__((used)) static int
md_pre_Sh(struct roff_node *n)
{
 switch (n->type) {
 case 130:
  if (n->sec == SEC_AUTHORS)
   outflags &= ~(MD_An_split | MD_An_nosplit);
  break;
 case 128:
  outflags |= MD_sp;
  md_rawword(n->tok == MDOC_Sh ? "#" : "##");
  break;
 case 129:
  outflags |= MD_sp;
  break;
 default:
  break;
 }
 return 1;
}
