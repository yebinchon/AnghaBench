
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Base; scalar_t__ Size; } ;
typedef TYPE_1__ CPpmd8 ;


 int free (scalar_t__) ;

void Ppmd8_Free(CPpmd8 *p)
{
  free(p->Base);
  p->Size = 0;
  p->Base = 0;
}
