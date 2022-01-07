
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Base; scalar_t__ Size; } ;
typedef TYPE_1__ CPpmd7 ;


 int free (scalar_t__) ;

__attribute__((used)) static void Ppmd7_Free(CPpmd7 *p)
{
  free(p->Base);
  p->Size = 0;
  p->Base = 0;
}
