
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct roff_node {scalar_t__ type; int tok; int parent; TYPE_2__* prev; } ;
struct roff_man {int flags; struct roff_node* last; scalar_t__ quick; int manmac; } ;
typedef enum roff_tok { ____Placeholder_roff_tok } roff_tok ;
struct TYPE_6__ {int flags; int (* fp ) (struct roff_man*,int,int,int,int*,char*) ;} ;
struct TYPE_5__ {TYPE_1__* child; } ;
struct TYPE_4__ {int string; } ;


 int MANDOCERR_MACRO ;
 int MANDOCERR_SPACE_EOL ;
 int MAN_BLINE ;
 int MAN_ELINE ;
 int MAN_NSCOPED ;
 int MAN_SH ;
 scalar_t__ ROFFT_BODY ;
 int ROFF_NONOFILL ;
 int TOKEN_NONE ;
 int man_breakscope (struct roff_man*,int) ;
 scalar_t__ man_hasc (char*) ;
 TYPE_3__* man_macro (int) ;
 int man_unscope (struct roff_man*,int ) ;
 int mandoc_escape (char const**,int *,int *) ;
 int mandoc_msg (int ,int,int,char*,...) ;
 int roff_body_alloc (struct roff_man*,int,int,int ) ;
 int roffhash_find (int ,char*,size_t) ;
 int * strchr (char*,char) ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (struct roff_man*,int,int,int,int*,char*) ;

__attribute__((used)) static int
man_pmacro(struct roff_man *man, int ln, char *buf, int offs)
{
 struct roff_node *n;
 const char *cp;
 size_t sz;
 enum roff_tok tok;
 int ppos;
 int bline;



 ppos = offs;
 tok = TOKEN_NONE;
 for (sz = 0; sz < 4 && strchr(" \t\\", buf[offs]) == ((void*)0); sz++)
  offs++;
 if (sz > 0 && sz < 4)
  tok = roffhash_find(man->manmac, buf + ppos, sz);
 if (tok == TOKEN_NONE) {
  mandoc_msg(MANDOCERR_MACRO, ln, ppos, "%s", buf + ppos - 1);
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






 if (buf[offs] == '\0' && buf[offs - 1] == ' ')
  mandoc_msg(MANDOCERR_SPACE_EOL, ln, offs - 1, ((void*)0));






 man_breakscope(man, tok);
 bline = man->flags & MAN_BLINE;
 if (bline && man_hasc(buf + offs))
  bline = 0;



 (*man_macro(tok)->fp)(man, tok, ln, ppos, &offs, buf);



 if (man->quick && tok == MAN_SH) {
  n = man->last;
  if (n->type == ROFFT_BODY &&
      strcmp(n->prev->child->string, "NAME"))
   return 2;
 }







 if (bline == 0 ||
     (man->flags & MAN_BLINE) == 0 ||
     man->flags & MAN_ELINE ||
     man_macro(tok)->flags & MAN_NSCOPED)
  return 1;

 man_unscope(man, man->last->parent);
 roff_body_alloc(man, ln, ppos, man->last->tok);
 man->flags &= ~(MAN_BLINE | ROFF_NONOFILL);
 return 1;
}
