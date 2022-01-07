
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff {TYPE_1__* last; } ;
struct TYPE_2__ {int tok; int endspan; } ;


 int MANDOCERR_BLK_NOTOPEN ;




 int mandoc_msg (int ,int,int,char*) ;
 int roffnode_cleanscope (struct roff*) ;
 int roffnode_pop (struct roff*) ;

__attribute__((used)) static int
roff_ccond(struct roff *r, int ln, int ppos)
{
 if (((void*)0) == r->last) {
  mandoc_msg(MANDOCERR_BLK_NOTOPEN, ln, ppos, "\\}");
  return 0;
 }

 switch (r->last->tok) {
 case 131:
 case 130:
 case 129:
 case 128:
  break;
 default:
  mandoc_msg(MANDOCERR_BLK_NOTOPEN, ln, ppos, "\\}");
  return 0;
 }

 if (r->last->endspan > -1) {
  mandoc_msg(MANDOCERR_BLK_NOTOPEN, ln, ppos, "\\}");
  return 0;
 }

 return roffnode_pop(r) + roffnode_cleanscope(r);
}
