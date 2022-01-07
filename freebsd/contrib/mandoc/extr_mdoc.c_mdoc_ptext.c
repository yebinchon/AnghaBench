
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


struct roff_node {scalar_t__ tok; scalar_t__ type; scalar_t__ end; char* string; int flags; TYPE_5__* parent; TYPE_2__* norm; } ;
struct roff_man {int flags; struct roff_node* last; int next; } ;
struct TYPE_12__ {int (* fp ) (struct roff_man*,int ,int,int,int*,char*) ;} ;
struct TYPE_11__ {scalar_t__ tok; TYPE_4__* norm; } ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_10__ {TYPE_3__ Bl; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_8__ {TYPE_1__ Bl; } ;


 scalar_t__ ENDBODY_NOT ;
 scalar_t__ LIST_column ;
 int MANDOCERR_EOS ;
 int MANDOCERR_FI_BLANK ;
 int MANDOCERR_SPACE_EOL ;
 scalar_t__ MDOC_Bl ;
 int MDOC_FREECOL ;
 int MDOC_It ;
 int NODE_ENDED ;
 int NODE_EOS ;
 int NODE_VALID ;
 scalar_t__ ROFFT_BODY ;

 int ROFF_NEXT_SIBLING ;
 int ROFF_NOFILL ;
 int ROFF_sp ;
 int assert (int) ;
 scalar_t__ isalnum (unsigned char) ;
 scalar_t__ isupper (unsigned char) ;
 scalar_t__ mandoc_eos (char*,size_t) ;
 int mandoc_msg (int ,int,int,int *) ;
 TYPE_6__* mdoc_macro (int ) ;
 int roff_elem_alloc (struct roff_man*,int,int,int ) ;
 int roff_word_alloc (struct roff_man*,int,int,char*) ;
 char* strchr (char const*,char) ;
 int stub1 (struct roff_man*,int ,int,int,int*,char*) ;

__attribute__((used)) static int
mdoc_ptext(struct roff_man *mdoc, int line, char *buf, int offs)
{
 struct roff_node *n;
 const char *cp, *sp;
 char *c, *ws, *end;

 n = mdoc->last;
 if ((n->tok == MDOC_Bl && n->type == ROFFT_BODY &&
      n->end == ENDBODY_NOT && n->norm->Bl.type == LIST_column) ||
     (n->parent != ((void*)0) && n->parent->tok == MDOC_Bl &&
      n->parent->norm->Bl.type == LIST_column)) {
  mdoc->flags |= MDOC_FREECOL;
  (*mdoc_macro(MDOC_It)->fp)(mdoc, MDOC_It,
      line, offs, &offs, buf);
  return 1;
 }







 ws = ((void*)0);
 for (c = end = buf + offs; *c; c++) {
  switch (*c) {
  case ' ':
   if (((void*)0) == ws)
    ws = c;
   continue;
  case '\t':





   if (((void*)0) == ws)
    ws = c;




   if (mdoc->flags & ROFF_NOFILL)
    continue;
   break;
  case '\\':

   if (c[1])
    c++;

  default:
   ws = ((void*)0);
   break;
  }
  end = c + 1;
 }
 *end = '\0';

 if (ws)
  mandoc_msg(MANDOCERR_SPACE_EOL, line, (int)(ws - buf), ((void*)0));







 if (buf[offs] == '\0' && (mdoc->flags & ROFF_NOFILL) == 0) {
  switch (mdoc->last->type) {
  case 128:
   sp = mdoc->last->string;
   cp = end = strchr(sp, '\0') - 2;
   if (cp < sp || cp[0] != '\\' || cp[1] != 'c')
    break;
   while (cp > sp && cp[-1] == '\\')
    cp--;
   if ((end - cp) % 2)
    break;
   *end = '\0';
   return 1;
  default:
   break;
  }
  mandoc_msg(MANDOCERR_FI_BLANK, line, (int)(c - buf), ((void*)0));
  roff_elem_alloc(mdoc, line, offs, ROFF_sp);
  mdoc->last->flags |= NODE_VALID | NODE_ENDED;
  mdoc->next = ROFF_NEXT_SIBLING;
  return 1;
 }

 roff_word_alloc(mdoc, line, offs, buf+offs);

 if (mdoc->flags & ROFF_NOFILL)
  return 1;







 assert(buf < end);

 if (mandoc_eos(buf+offs, (size_t)(end-buf-offs)))
  mdoc->last->flags |= NODE_EOS;

 for (c = buf + offs; c != ((void*)0); c = strchr(c + 1, '.')) {
  if (c - buf < offs + 2)
   continue;
  if (end - c < 3)
   break;
  if (c[1] != ' ' ||
      isalnum((unsigned char)c[-2]) == 0 ||
      isalnum((unsigned char)c[-1]) == 0 ||
      (c[-2] == 'n' && c[-1] == 'c') ||
      (c[-2] == 'v' && c[-1] == 's'))
   continue;
  c += 2;
  if (*c == ' ')
   c++;
  if (*c == ' ')
   c++;
  if (isupper((unsigned char)(*c)))
   mandoc_msg(MANDOCERR_EOS, line, (int)(c - buf), ((void*)0));
 }

 return 1;
}
