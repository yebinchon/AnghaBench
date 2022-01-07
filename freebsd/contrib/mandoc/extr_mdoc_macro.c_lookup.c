
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_man {int flags; int mdocmac; } ;
typedef enum roff_tok { ____Placeholder_roff_tok } roff_tok ;
struct TYPE_2__ {int flags; } ;


 int MANDOCERR_MACRO_CALL ;
 int MDOC_CALLABLE ;
 int MDOC_PARSED ;
 int MDOC_PHRASEQF ;
 int TOKEN_NONE ;
 int mandoc_msg (int ,int,int,char*,char const*) ;
 TYPE_1__* mdoc_macro (int) ;
 int roffhash_find (int ,char const*,int ) ;

__attribute__((used)) static int
lookup(struct roff_man *mdoc, int from, int line, int ppos, const char *p)
{
 enum roff_tok res;

 if (mdoc->flags & MDOC_PHRASEQF) {
  mdoc->flags &= ~MDOC_PHRASEQF;
  return TOKEN_NONE;
 }
 if (from == TOKEN_NONE || mdoc_macro(from)->flags & MDOC_PARSED) {
  res = roffhash_find(mdoc->mdocmac, p, 0);
  if (res != TOKEN_NONE) {
   if (mdoc_macro(res)->flags & MDOC_CALLABLE)
    return res;
   mandoc_msg(MANDOCERR_MACRO_CALL, line, ppos, "%s", p);
  }
 }
 return TOKEN_NONE;
}
