
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct roff_meta {scalar_t__ macroset; } ;
struct mparse {int options; TYPE_1__* man; } ;
struct TYPE_4__ {struct roff_meta meta; } ;


 scalar_t__ MACROSET_MDOC ;
 int MPARSE_VALIDATE ;
 int man_validate (TYPE_1__*) ;
 int mdoc_validate (TYPE_1__*) ;
 int roff_state_reset (TYPE_1__*) ;

struct roff_meta *
mparse_result(struct mparse *curp)
{
 roff_state_reset(curp->man);
 if (curp->options & MPARSE_VALIDATE) {
  if (curp->man->meta.macroset == MACROSET_MDOC)
   mdoc_validate(curp->man);
  else
   man_validate(curp->man);
 }
 return &curp->man->meta;
}
