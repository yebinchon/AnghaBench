
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct roff_node {int type; TYPE_3__* norm; TYPE_1__* parent; } ;
struct TYPE_5__ {int type; int count; int comp; } ;
struct TYPE_6__ {TYPE_2__ Bl; } ;
struct TYPE_4__ {struct roff_node* parent; } ;


 int ESC_FON ;
 int MD_br ;
 int MD_nl ;
 int MD_nonl ;
 int MD_sp ;
 int MD_spc ;



 int code_blocks ;
 int escflags ;
 int list_blocks ;
 int md_pre_D1 (struct roff_node*) ;
 int md_preword () ;
 int md_rawword (char*) ;
 int md_stack (char) ;
 int outcount ;
 int outflags ;
 int printf (char*,int) ;
 int quote_blocks ;

__attribute__((used)) static int
md_pre_It(struct roff_node *n)
{
 struct roff_node *bln;

 switch (n->type) {
 case 130:
  return 1;

 case 128:
  bln = n->parent->parent;
  if (bln->norm->Bl.comp == 0 &&
      bln->norm->Bl.type != 140)
   outflags |= MD_sp;
  outflags |= MD_nl;

  switch (bln->norm->Bl.type) {
  case 133:
   outflags |= MD_br;
   return 0;
  case 134:
  case 138:
  case 132:
   outflags |= MD_br;
   return 1;
  case 131:
  case 136:
   outflags |= MD_sp;
   return 1;
  case 141:
   md_rawword("*\t");
   break;
  case 139:
  case 135:
   md_rawword("-\t");
   break;
  case 137:
   md_preword();
   if (bln->norm->Bl.count < 99)
    bln->norm->Bl.count++;
   printf("%d.\t", bln->norm->Bl.count);
   escflags &= ~ESC_FON;
   break;
  case 140:
   outflags |= MD_br;
   return 0;
  default:
   return 0;
  }
  outflags &= ~MD_spc;
  outflags |= MD_nonl;
  outcount = 0;
  md_stack('\t');
  if (code_blocks || quote_blocks)
   list_blocks++;
  return 0;

 case 129:
  bln = n->parent->parent;
  switch (bln->norm->Bl.type) {
  case 132:
   outflags |= MD_br;
   break;
  case 131:
  case 136:
   md_pre_D1(n);
   break;
  default:
   break;
  }
  return 1;

 default:
  return 0;
 }
}
