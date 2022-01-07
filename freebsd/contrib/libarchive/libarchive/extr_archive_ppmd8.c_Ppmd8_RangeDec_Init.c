
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int (* Read ) (TYPE_3__*) ;} ;
struct TYPE_5__ {TYPE_3__* In; } ;
struct TYPE_6__ {int Range; int Code; TYPE_1__ Stream; scalar_t__ Low; } ;
typedef TYPE_2__ CPpmd8 ;
typedef int Bool ;


 int stub1 (TYPE_3__*) ;

Bool Ppmd8_RangeDec_Init(CPpmd8 *p)
{
  unsigned i;
  p->Low = 0;
  p->Range = 0xFFFFFFFF;
  p->Code = 0;
  for (i = 0; i < 4; i++)
    p->Code = (p->Code << 8) | p->Stream.In->Read(p->Stream.In);
  return (p->Code < 0xFFFFFFFF);
}
