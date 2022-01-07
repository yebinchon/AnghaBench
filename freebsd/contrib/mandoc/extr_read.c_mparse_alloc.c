
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mparse {int options; char const* os_s; TYPE_3__* man; int roff; } ;
typedef enum mandoc_os { ____Placeholder_mandoc_os } mandoc_os ;
struct TYPE_5__ {int os_e; TYPE_1__* first; int macroset; } ;
struct TYPE_6__ {TYPE_2__ meta; int * manmac; int * mdocmac; } ;
struct TYPE_4__ {int tok; } ;


 int MACROSET_MAN ;
 int MACROSET_MDOC ;
 int MAN_MAX ;
 int MAN_TH ;
 int MDOC_Dd ;
 int MDOC_MAX ;
 int MPARSE_MAN ;
 int MPARSE_MDOC ;
 int MPARSE_QUICK ;
 int TOKEN_NONE ;
 struct mparse* mandoc_calloc (int,int) ;
 int roff_alloc (int) ;
 TYPE_3__* roff_man_alloc (int ,char const*,int) ;
 void* roffhash_alloc (int ,int ) ;

struct mparse *
mparse_alloc(int options, enum mandoc_os os_e, const char *os_s)
{
 struct mparse *curp;

 curp = mandoc_calloc(1, sizeof(struct mparse));

 curp->options = options;
 curp->os_s = os_s;

 curp->roff = roff_alloc(options);
 curp->man = roff_man_alloc(curp->roff, curp->os_s,
  curp->options & MPARSE_QUICK ? 1 : 0);
 if (curp->options & MPARSE_MDOC) {
  curp->man->meta.macroset = MACROSET_MDOC;
  if (curp->man->mdocmac == ((void*)0))
   curp->man->mdocmac = roffhash_alloc(MDOC_Dd, MDOC_MAX);
 } else if (curp->options & MPARSE_MAN) {
  curp->man->meta.macroset = MACROSET_MAN;
  if (curp->man->manmac == ((void*)0))
   curp->man->manmac = roffhash_alloc(MAN_TH, MAN_MAX);
 }
 curp->man->meta.first->tok = TOKEN_NONE;
 curp->man->meta.os_e = os_e;
 return curp;
}
