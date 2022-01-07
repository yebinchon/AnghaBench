
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mparse {TYPE_4__* man; TYPE_1__* primary; int roff; } ;
struct TYPE_7__ {TYPE_2__* first; int macroset; } ;
struct TYPE_8__ {TYPE_3__ meta; int * manmac; int * mdocmac; } ;
struct TYPE_6__ {int tok; } ;
struct TYPE_5__ {char* buf; int sz; } ;


 int MACROSET_MAN ;
 int MACROSET_MDOC ;
 int MAN_MAX ;
 int MAN_TH ;
 int MDOC_Dd ;
 int MDOC_MAX ;
 int MPARSE_MAN ;
 int MPARSE_MDOC ;
 int TOKEN_NONE ;
 char* memchr (char*,char,int) ;
 int roff_getformat (int ) ;
 void* roffhash_alloc (int ,int ) ;

__attribute__((used)) static void
choose_parser(struct mparse *curp)
{
 char *cp, *ep;
 int format;







 if ((format = roff_getformat(curp->roff)) == 0) {
  cp = curp->primary->buf;
  ep = cp + curp->primary->sz;
  while (cp < ep) {
   if (*cp == '.' || *cp == '\'') {
    cp++;
    if (cp[0] == 'D' && cp[1] == 'd') {
     format = MPARSE_MDOC;
     break;
    }
    if (cp[0] == 'T' && cp[1] == 'H') {
     format = MPARSE_MAN;
     break;
    }
   }
   cp = memchr(cp, '\n', ep - cp);
   if (cp == ((void*)0))
    break;
   cp++;
  }
 }

 if (format == MPARSE_MDOC) {
  curp->man->meta.macroset = MACROSET_MDOC;
  if (curp->man->mdocmac == ((void*)0))
   curp->man->mdocmac = roffhash_alloc(MDOC_Dd, MDOC_MAX);
 } else {
  curp->man->meta.macroset = MACROSET_MAN;
  if (curp->man->manmac == ((void*)0))
   curp->man->manmac = roffhash_alloc(MAN_TH, MAN_MAX);
 }
 curp->man->meta.first->tok = TOKEN_NONE;
}
