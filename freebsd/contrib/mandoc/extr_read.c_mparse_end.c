
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mparse {int roff; TYPE_2__* man; } ;
struct TYPE_4__ {scalar_t__ macroset; } ;
struct TYPE_5__ {TYPE_1__ meta; } ;


 scalar_t__ MACROSET_MAN ;
 scalar_t__ MACROSET_MDOC ;
 scalar_t__ MACROSET_NONE ;
 int man_endparse (TYPE_2__*) ;
 int mdoc_endparse (TYPE_2__*) ;
 int roff_endparse (int ) ;

__attribute__((used)) static void
mparse_end(struct mparse *curp)
{
 if (curp->man->meta.macroset == MACROSET_NONE)
  curp->man->meta.macroset = MACROSET_MAN;
 if (curp->man->meta.macroset == MACROSET_MDOC)
  mdoc_endparse(curp->man);
 else
  man_endparse(curp->man);
 roff_endparse(curp->roff);
}
