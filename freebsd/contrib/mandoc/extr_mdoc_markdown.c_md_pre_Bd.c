
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct roff_node {TYPE_2__* norm; } ;
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ Bd; } ;




 int md_pre_D1 (struct roff_node*) ;
 int md_pre_Dl (struct roff_node*) ;

__attribute__((used)) static int
md_pre_Bd(struct roff_node *n)
{
 switch (n->norm->Bd.type) {
 case 128:
 case 129:
  return md_pre_Dl(n);
 default:
  return md_pre_D1(n);
 }
}
