
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eqn_node {char* data; char* start; char* end; char const* toksz; int gsize; TYPE_1__* node; } ;
struct eqn_box {void* type; char* text; int expectargs; int args; int size; struct eqn_box* parent; struct eqn_box* prev; struct eqn_box* last; struct eqn_box* first; struct eqn_box* next; void* font; int * left; void* right; int pos; void* top; void* bottom; } ;
typedef enum eqn_tok { ____Placeholder_eqn_tok } eqn_tok ;
struct TYPE_2__ {int pos; int line; struct eqn_box* eqn; } ;


 void* EQNFONT_BOLD ;
 void* EQNFONT_FAT ;
 void* EQNFONT_ITALIC ;
 void* EQNFONT_NONE ;
 void* EQNFONT_ROMAN ;
 int EQNPOS_FROM ;
 int EQNPOS_FROMTO ;
 int EQNPOS_OVER ;
 int EQNPOS_SQRT ;
 int EQNPOS_SUB ;
 int EQNPOS_SUBSUP ;
 int EQNPOS_SUP ;
 int EQNPOS_TO ;
 void* EQN_LIST ;
 void* EQN_MATRIX ;
 void* EQN_PILE ;
 void* EQN_SUBEXPR ;
 void* EQN_TEXT ;
 int MANDOCERR_BLK_NOTOPEN ;
 int MANDOCERR_EQN_NOBOX ;
 int MANDOCERR_IT_NONUM ;
 int MANDOCERR_IT_STRAY ;
 int MANDOCERR_REQ_EMPTY ;
 int MODE_NOSUB ;
 int MODE_QUOTED ;
 int MODE_SUB ;
 int MODE_TOK ;
 int STRNEQ (char*,char const*,char*,int) ;
 int abort () ;
 int assert (int ) ;
 struct eqn_box* eqn_box_alloc (struct eqn_node*,struct eqn_box*) ;
 struct eqn_box* eqn_box_makebinary (struct eqn_node*,struct eqn_box*) ;
 int eqn_def (struct eqn_node*) ;
 int eqn_delim (struct eqn_node*) ;
 int eqn_next (struct eqn_node*,int ) ;
 int * eqn_toks ;
 int eqn_undef (struct eqn_node*) ;
 int free (char*) ;
 int isalpha (unsigned char) ;
 int isdigit (unsigned char) ;
 int mandoc_escape (char const**,int *,int *) ;
 int mandoc_msg (int ,int ,int ,char*,...) ;
 void* mandoc_strdup (char const*) ;
 void* mandoc_strndup (char*,char const*) ;
 int mandoc_strntoi (char*,char const*,int) ;
 int strspn (char*,char*) ;

void
eqn_parse(struct eqn_node *ep)
{
 struct eqn_box *cur, *nbox, *parent, *split;
 const char *cp, *cpn;
 char *p;
 enum eqn_tok tok;
 enum { CCL_LET, CCL_DIG, CCL_PUN } ccl, ccln;
 int size;

 parent = ep->node->eqn;
 assert(parent != ((void*)0));






 if (ep->data == ((void*)0))
  return;

 ep->start = ep->end = ep->data + strspn(ep->data, " ^~");

next_tok:
 tok = eqn_next(ep, MODE_TOK);
 switch (tok) {
 case 132:
  eqn_undef(ep);
  break;
 case 148:
 case 169:
  eqn_def(ep);
  break;
 case 135:
  if (eqn_next(ep, MODE_NOSUB) == 163 ||
      eqn_next(ep, MODE_QUOTED) == 163)
   mandoc_msg(MANDOCERR_REQ_EMPTY,
       ep->node->line, ep->node->pos, "tdefine");
  break;
 case 168:
  eqn_delim(ep);
  break;
 case 158:
  if (eqn_next(ep, MODE_SUB) == 163)
   mandoc_msg(MANDOCERR_REQ_EMPTY, ep->node->line,
       ep->node->pos, "%s", eqn_toks[tok]);
  break;
 case 150:
 case 152:

  break;
 case 164:
 case 129:
 case 131:
 case 175:
 case 134:
 case 156:
 case 167:
 case 166:
  if (parent->last == ((void*)0)) {
   mandoc_msg(MANDOCERR_EQN_NOBOX, ep->node->line,
       ep->node->pos, "%s", eqn_toks[tok]);
   cur = eqn_box_alloc(ep, parent);
   cur->type = EQN_TEXT;
   cur->text = mandoc_strdup("");
  }
  parent = eqn_box_makebinary(ep, parent);
  parent->type = EQN_LIST;
  parent->expectargs = 1;
  parent->font = EQNFONT_ROMAN;
  switch (tok) {
  case 166:
   parent->top = mandoc_strdup("\\[ad]");
   break;
  case 129:
   parent->top = mandoc_strdup("\\[->]");
   break;
  case 164:
   parent->top = mandoc_strdup("\\[<>]");
   break;
  case 134:
   parent->top = mandoc_strdup("\\[a~]");
   break;
  case 131:
   parent->bottom = mandoc_strdup("\\[ul]");
   break;
  case 175:
   parent->top = mandoc_strdup("\\[rn]");
   break;
  case 167:
   parent->top = mandoc_strdup("\\[a.]");
   break;
  case 156:
   parent->top = mandoc_strdup("\\[ha]");
   break;
  default:
   abort();
  }
  parent = parent->parent;
  break;
 case 159:
 case 176:
 case 165:
 case 130:
  if (eqn_next(ep, MODE_SUB) == 163)
   mandoc_msg(MANDOCERR_REQ_EMPTY, ep->node->line,
       ep->node->pos, "%s", eqn_toks[tok]);
  break;
 case 162:
 case 142:
 case 155:
 case 174:
  while (parent->args == parent->expectargs)
   parent = parent->parent;





  parent = eqn_box_alloc(ep, parent);
  parent->type = EQN_LIST;
  parent->expectargs = 1;
  switch (tok) {
  case 162:
   parent->font = EQNFONT_FAT;
   break;
  case 142:
   parent->font = EQNFONT_ROMAN;
   break;
  case 155:
   parent->font = EQNFONT_ITALIC;
   break;
  case 174:
   parent->font = EQNFONT_BOLD;
   break;
  default:
   abort();
  }
  break;
 case 140:
 case 157:

  if (eqn_next(ep, MODE_SUB) == 163) {
   mandoc_msg(MANDOCERR_REQ_EMPTY, ep->node->line,
       ep->node->pos, "%s", eqn_toks[tok]);
   break;
  }
  size = mandoc_strntoi(ep->start, ep->toksz, 10);
  if (-1 == size) {
   mandoc_msg(MANDOCERR_IT_NONUM, ep->node->line,
       ep->node->pos, "%s", eqn_toks[tok]);
   break;
  }
  if (157 == tok) {
   ep->gsize = size;
   break;
  }
  while (parent->args == parent->expectargs)
   parent = parent->parent;
  parent = eqn_box_alloc(ep, parent);
  parent->type = EQN_LIST;
  parent->expectargs = 1;
  parent->size = size;
  break;
 case 161:
 case 133:
 case 138:
 case 137:





  if (parent->last == ((void*)0)) {
   mandoc_msg(MANDOCERR_EQN_NOBOX, ep->node->line,
       ep->node->pos, "%s", eqn_toks[tok]);
   cur = eqn_box_alloc(ep, parent);
   cur->type = EQN_TEXT;
   cur->text = mandoc_strdup("");
  }
  while (parent->expectargs == 1 && parent->args == 1)
   parent = parent->parent;
  if (tok == 161 || tok == 133) {
   for (cur = parent; cur != ((void*)0); cur = cur->parent)
    if (cur->pos == EQNPOS_SUB ||
        cur->pos == EQNPOS_SUP ||
        cur->pos == EQNPOS_SUBSUP ||
        cur->pos == EQNPOS_SQRT ||
        cur->pos == EQNPOS_OVER)
     break;
   if (cur != ((void*)0))
    parent = cur->parent;
  }
  if (tok == 137 && parent->pos == EQNPOS_SUB) {
   parent->expectargs = 3;
   parent->pos = EQNPOS_SUBSUP;
   break;
  }
  if (tok == 133 && parent->pos == EQNPOS_FROM) {
   parent->expectargs = 3;
   parent->pos = EQNPOS_FROMTO;
   break;
  }
  parent = eqn_box_makebinary(ep, parent);
  switch (tok) {
  case 161:
   parent->pos = EQNPOS_FROM;
   break;
  case 133:
   parent->pos = EQNPOS_TO;
   break;
  case 137:
   parent->pos = EQNPOS_SUP;
   break;
  case 138:
   parent->pos = EQNPOS_SUB;
   break;
  default:
   abort();
  }
  break;
 case 139:
  while (parent->args == parent->expectargs)
   parent = parent->parent;





  parent = eqn_box_alloc(ep, parent);
  parent->type = EQN_SUBEXPR;
  parent->pos = EQNPOS_SQRT;
  parent->expectargs = 1;
  break;
 case 147:





  if (parent->last == ((void*)0)) {
   mandoc_msg(MANDOCERR_EQN_NOBOX, ep->node->line,
       ep->node->pos, "%s", eqn_toks[tok]);
   cur = eqn_box_alloc(ep, parent);
   cur->type = EQN_TEXT;
   cur->text = mandoc_strdup("");
  }
  while (parent->args == parent->expectargs)
   parent = parent->parent;
  while (EQN_SUBEXPR == parent->type)
   parent = parent->parent;
  parent = eqn_box_makebinary(ep, parent);
  parent->pos = EQNPOS_OVER;
  break;
 case 143:
 case 173:





  for (cur = parent; cur != ((void*)0); cur = cur->parent)
   if (cur->type == EQN_LIST &&
       cur->expectargs > 1 &&
       (tok == 173 ||
        cur->left != ((void*)0)))
    break;
  if (cur == ((void*)0)) {
   mandoc_msg(MANDOCERR_BLK_NOTOPEN, ep->node->line,
       ep->node->pos, "%s", eqn_toks[tok]);
   break;
  }
  parent = cur;
  if (143 == tok) {
   if (eqn_next(ep, MODE_SUB) == 163) {
    mandoc_msg(MANDOCERR_REQ_EMPTY,
        ep->node->line, ep->node->pos,
        "%s", eqn_toks[tok]);
    break;
   }

   if (STRNEQ(ep->start, ep->toksz, "ceiling", 7))
    parent->right = mandoc_strdup("\\[rc]");
   else if (STRNEQ(ep->start, ep->toksz, "floor", 5))
    parent->right = mandoc_strdup("\\[rf]");
   else
    parent->right =
        mandoc_strndup(ep->start, ep->toksz);
  }
  parent = parent->parent;
  if (tok == 173 &&
      (parent->type == EQN_PILE ||
       parent->type == EQN_MATRIX))
   parent = parent->parent;

  while (parent->type == EQN_LIST &&
      parent->expectargs == 1 &&
      parent->args == 1)
   parent = parent->parent;
  break;
 case 172:
 case 153:





  while (parent->args == parent->expectargs)
   parent = parent->parent;
  if (153 == tok &&
      eqn_next(ep, MODE_SUB) == 163) {
   mandoc_msg(MANDOCERR_REQ_EMPTY, ep->node->line,
       ep->node->pos, "%s", eqn_toks[tok]);
   break;
  }
  parent = eqn_box_alloc(ep, parent);
  parent->type = EQN_LIST;
  if (153 == tok) {
   if (STRNEQ(ep->start, ep->toksz, "ceiling", 7))
    parent->left = mandoc_strdup("\\[lc]");
   else if (STRNEQ(ep->start, ep->toksz, "floor", 5))
    parent->left = mandoc_strdup("\\[lf]");
   else
    parent->left =
        mandoc_strndup(ep->start, ep->toksz);
  }
  break;
 case 146:
 case 151:
 case 141:
 case 170:
 case 171:
 case 154:
 case 144:
  while (parent->args == parent->expectargs)
   parent = parent->parent;
  parent = eqn_box_alloc(ep, parent);
  parent->type = EQN_PILE;
  parent->expectargs = 1;
  break;
 case 177:
  for (cur = parent; cur != ((void*)0); cur = cur->parent)
   if (cur->type == EQN_PILE)
    break;
  if (cur == ((void*)0)) {
   mandoc_msg(MANDOCERR_IT_STRAY, ep->node->line,
       ep->node->pos, "%s", eqn_toks[tok]);
   break;
  }
  parent = eqn_box_alloc(ep, cur);
  parent->type = EQN_LIST;
  break;
 case 149:
  while (parent->args == parent->expectargs)
   parent = parent->parent;
  parent = eqn_box_alloc(ep, parent);
  parent->type = EQN_MATRIX;
  parent->expectargs = 1;
  break;
 case 163:
  return;
 case 128:
 case 160:
 case 145:
 case 136:
  p = ep->start;
  assert(p != ((void*)0));




  while (parent->args == parent->expectargs)
   parent = parent->parent;
  cur = eqn_box_alloc(ep, parent);
  cur->type = EQN_TEXT;
  cur->text = p;
  switch (tok) {
  case 160:
   cur->font = EQNFONT_ROMAN;
   break;
  case 145:
   if (cur->font == EQNFONT_NONE)
    cur->font = EQNFONT_ITALIC;
   break;
  case 136:
   break;
  default:
   if (cur->font != EQNFONT_NONE || *p == '\0')
    break;
   cpn = p - 1;
   ccln = CCL_LET;
   split = ((void*)0);
   for (;;) {

    cp = cpn++;
    ccl = ccln;
    ccln = isalpha((unsigned char)*cpn) ? CCL_LET :
        isdigit((unsigned char)*cpn) ||
        (*cpn == '.' && (ccl == CCL_DIG ||
         isdigit((unsigned char)cpn[1]))) ?
        CCL_DIG : CCL_PUN;

    if (cp < p)
     continue;
    cur->font = ccl == CCL_LET ?
        EQNFONT_ITALIC : EQNFONT_ROMAN;
    if (*cp == '\\')
     mandoc_escape(&cpn, ((void*)0), ((void*)0));

    if (*cpn == '\0')
     break;
    if (ccln == ccl && *cp != ',' && *cpn != ',')
     continue;

    if (parent->args == parent->expectargs) {

     if (cur->prev == ((void*)0))
      parent->first = cur->next;
     else
      cur->prev->next = ((void*)0);
     parent->last = cur->prev;
     parent->args--;

     split = eqn_box_alloc(ep, parent);
     split->type = EQN_LIST;

     split->first = split->last = cur;
     cur->parent = split;
     cur->prev = ((void*)0);
     parent = split;
    }

    nbox = eqn_box_alloc(ep, parent);
    nbox->type = EQN_TEXT;
    nbox->text = mandoc_strdup(cpn);

    p = mandoc_strndup(cur->text,
        cpn - cur->text);
    free(cur->text);
    cur->text = p;

    cur = nbox;
    p = nbox->text;
    cpn = p - 1;
    ccln = CCL_LET;
   }
   if (split != ((void*)0))
    parent = split->parent;
   break;
  }
  break;
 default:
  abort();
 }
 goto next_tok;
}
