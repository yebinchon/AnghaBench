
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int action; } ;


 int SKIP ;
 TYPE_1__ curfile ;
 int getfile (int ,int ,int ) ;
 int xtrnull ;

void
skipfile(void)
{

 curfile.action = SKIP;
 getfile(xtrnull, xtrnull, xtrnull);
}
