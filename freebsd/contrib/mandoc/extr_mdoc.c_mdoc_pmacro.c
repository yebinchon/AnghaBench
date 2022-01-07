
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct roff_node {scalar_t__ tok; scalar_t__ type; scalar_t__ end; scalar_t__ sec; TYPE_5__* parent; TYPE_2__* norm; } ;
struct roff_man {struct roff_node* last; scalar_t__ quick; int flags; int mdocmac; } ;
typedef enum roff_tok { ____Placeholder_roff_tok } roff_tok ;
struct TYPE_12__ {int (* fp ) (struct roff_man*,int,int,int,int*,char*) ;} ;
struct TYPE_11__ {scalar_t__ tok; TYPE_4__* norm; } ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_10__ {TYPE_3__ Bl; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_8__ {TYPE_1__ Bl; } ;


 scalar_t__ ENDBODY_NOT ;
 scalar_t__ LIST_column ;
 int MANDOCERR_MACRO ;
 int MANDOCERR_SPACE_EOL ;
 scalar_t__ MDOC_Bl ;
 int MDOC_El ;
 int MDOC_FREECOL ;
 int MDOC_It ;
 int MDOC_Sh ;
 scalar_t__ ROFFT_BODY ;
 scalar_t__ SEC_NAME ;
 int TOKEN_NONE ;
 int mandoc_escape (char const**,int *,int *) ;
 int mandoc_msg (int ,int,int,char*,...) ;
 TYPE_6__* mdoc_macro (int) ;
 int roffhash_find (int ,char*,size_t) ;
 int * strchr (char*,char) ;
 int stub1 (struct roff_man*,int,int,int,int*,char*) ;
 int stub2 (struct roff_man*,int,int,int,int*,char*) ;
 int stub3 (struct roff_man*,int,int,int,int*,char*) ;

__attribute__((used)) static int
mdoc_pmacro(struct roff_man *mdoc, int ln, char *buf, int offs)
{
 struct roff_node *n;
 const char *cp;
 size_t sz;
 enum roff_tok tok;
 int sv;



 sv = offs;
 tok = TOKEN_NONE;
 for (sz = 0; sz < 4 && strchr(" \t\\", buf[offs]) == ((void*)0); sz++)
  offs++;
 if (sz == 2 || sz == 3)
  tok = roffhash_find(mdoc->mdocmac, buf + sv, sz);
 if (tok == TOKEN_NONE) {
  mandoc_msg(MANDOCERR_MACRO, ln, sv, "%s", buf + sv - 1);
  return 1;
 }



 switch (buf[offs]) {
 case '\\':
  cp = buf + offs + 1;
  mandoc_escape(&cp, ((void*)0), ((void*)0));
  offs = cp - buf;
  break;
 case '\t':
  offs++;
  break;
 default:
  break;
 }



 while (buf[offs] == ' ')
  offs++;






 if ('\0' == buf[offs] && ' ' == buf[offs - 1])
  mandoc_msg(MANDOCERR_SPACE_EOL, ln, offs - 1, ((void*)0));






 n = mdoc->last;
 if (n == ((void*)0) || tok == MDOC_It || tok == MDOC_El) {
  (*mdoc_macro(tok)->fp)(mdoc, tok, ln, sv, &offs, buf);
  return 1;
 }
 if ((n->tok == MDOC_Bl && n->type == ROFFT_BODY &&
      n->end == ENDBODY_NOT && n->norm->Bl.type == LIST_column) ||
     (n->parent != ((void*)0) && n->parent->tok == MDOC_Bl &&
      n->parent->norm->Bl.type == LIST_column)) {
  mdoc->flags |= MDOC_FREECOL;
  (*mdoc_macro(MDOC_It)->fp)(mdoc, MDOC_It, ln, sv, &sv, buf);
  return 1;
 }



 (*mdoc_macro(tok)->fp)(mdoc, tok, ln, sv, &offs, buf);



 if (mdoc->quick && MDOC_Sh == tok &&
     SEC_NAME != mdoc->last->sec)
  return 2;

 return 1;
}
