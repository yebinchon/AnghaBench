
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tag {int dummy; } ;
struct html {int dummy; } ;
struct eqn_box {scalar_t__ type; int expectargs; int pos; char* top; char* bottom; char* text; int font; char* left; char* right; struct eqn_box* next; struct eqn_box* first; TYPE_1__* parent; } ;
typedef enum htmltag { ____Placeholder_htmltag } htmltag ;
typedef enum eqn_fontt { ____Placeholder_eqn_fontt } eqn_fontt ;
struct TYPE_2__ {scalar_t__ type; } ;
 scalar_t__ EQN_LIST ;
 scalar_t__ EQN_MATRIX ;
 scalar_t__ EQN_PILE ;
 int TAG_MFENCED ;
 int TAG_MFRAC ;
 int TAG_MI ;
 int TAG_MN ;
 int TAG_MO ;
 int TAG_MOVER ;
 int TAG_MROW ;
 int TAG_MSQRT ;
 int TAG_MSUB ;
 int TAG_MSUBSUP ;
 int TAG_MSUP ;
 int TAG_MTABLE ;
 int TAG_MTD ;
 int TAG_MTR ;
 int TAG_MUNDER ;
 int TAG_MUNDEROVER ;
 int abort () ;
 int assert (int) ;
 scalar_t__ isalnum (unsigned char) ;
 scalar_t__ isalpha (unsigned char) ;
 scalar_t__ isdigit (unsigned char) ;
 int mandoc_escape (char const**,int *,int *) ;
 struct tag* print_otag (struct html*,int,char*,...) ;
 int print_tagq (struct html*,struct tag*) ;
 int print_text (struct html*,char*) ;

__attribute__((used)) static void
eqn_box(struct html *p, const struct eqn_box *bp)
{
 struct tag *post, *row, *cell, *t;
 const struct eqn_box *child, *parent;
 const char *cp;
 size_t i, j, rows;
 enum htmltag tag;
 enum eqn_fontt font;

 if (((void*)0) == bp)
  return;

 post = ((void*)0);





 if (EQN_MATRIX == bp->type) {
  if (((void*)0) == bp->first)
   goto out;
  if (bp->first->type != EQN_LIST ||
      bp->first->expectargs == 1) {
   eqn_box(p, bp->first);
   goto out;
  }
  if (((void*)0) == (parent = bp->first->first))
   goto out;

  if (((void*)0) == (child = parent->first))
   goto out;
  for (rows = 0; ((void*)0) != child; rows++)
   child = child->next;

  post = print_otag(p, TAG_MTABLE, "");
  for (i = 0; i < rows; i++) {
   parent = bp->first->first;
   row = print_otag(p, TAG_MTR, "");
   while (((void*)0) != parent) {
    child = parent->first;
    for (j = 0; j < i; j++) {
     if (((void*)0) == child)
      break;
     child = child->next;
    }
    cell = print_otag(p, TAG_MTD, "");





    if (((void*)0) != child)
     eqn_box(p, child->first);
    print_tagq(p, cell);
    parent = parent->next;
   }
   print_tagq(p, row);
  }
  goto out;
 }

 switch (bp->pos) {
 case 128:
  post = print_otag(p, TAG_MOVER, "");
  break;
 case 129:
  post = print_otag(p, TAG_MSUP, "");
  break;
 case 135:
  post = print_otag(p, TAG_MUNDER, "");
  break;
 case 131:
  post = print_otag(p, TAG_MSUB, "");
  break;
 case 133:
  post = print_otag(p, TAG_MFRAC, "");
  break;
 case 134:
  post = print_otag(p, TAG_MUNDEROVER, "");
  break;
 case 130:
  post = print_otag(p, TAG_MSUBSUP, "");
  break;
 case 132:
  post = print_otag(p, TAG_MSQRT, "");
  break;
 default:
  break;
 }

 if (bp->top || bp->bottom) {
  assert(((void*)0) == post);
  if (bp->top && ((void*)0) == bp->bottom)
   post = print_otag(p, TAG_MOVER, "");
  else if (bp->top && bp->bottom)
   post = print_otag(p, TAG_MUNDEROVER, "");
  else if (bp->bottom)
   post = print_otag(p, TAG_MUNDER, "");
 }

 if (EQN_PILE == bp->type) {
  assert(((void*)0) == post);
  if (bp->first != ((void*)0) &&
      bp->first->type == EQN_LIST &&
      bp->first->expectargs > 1)
   post = print_otag(p, TAG_MTABLE, "");
 } else if (bp->type == EQN_LIST && bp->expectargs > 1 &&
     bp->parent && bp->parent->type == EQN_PILE) {
  assert(((void*)0) == post);
  post = print_otag(p, TAG_MTR, "");
  print_otag(p, TAG_MTD, "");
 }

 if (bp->text != ((void*)0)) {
  assert(post == ((void*)0));
  tag = TAG_MI;
  cp = bp->text;
  if (isdigit((unsigned char)cp[0]) ||
      (cp[0] == '.' && isdigit((unsigned char)cp[1]))) {
   tag = TAG_MN;
   while (*++cp != '\0') {
    if (*cp != '.' &&
        isdigit((unsigned char)*cp) == 0) {
     tag = TAG_MI;
     break;
    }
   }
  } else if (*cp != '\0' && isalpha((unsigned char)*cp) == 0) {
   tag = TAG_MO;
   while (*cp != '\0') {
    if (cp[0] == '\\' && cp[1] != '\0') {
     cp++;
     mandoc_escape(&cp, ((void*)0), ((void*)0));
    } else if (isalnum((unsigned char)*cp)) {
     tag = TAG_MI;
     break;
    } else
     cp++;
   }
  }
  font = bp->font;
  if (bp->text[0] != '\0' &&
      (((tag == TAG_MN || tag == TAG_MO) &&
        font == 136) ||
       (tag == TAG_MI && font == (bp->text[1] == '\0' ?
        138 : 136))))
   font = 137;
  switch (font) {
  case 137:
   post = print_otag(p, tag, "");
   break;
  case 136:
   post = print_otag(p, tag, "?", "fontstyle", "normal");
   break;
  case 140:
  case 139:
   post = print_otag(p, tag, "?", "fontweight", "bold");
   break;
  case 138:
   post = print_otag(p, tag, "?", "fontstyle", "italic");
   break;
  default:
   abort();
  }
  print_text(p, bp->text);
 } else if (((void*)0) == post) {
  if (((void*)0) != bp->left || ((void*)0) != bp->right)
   post = print_otag(p, TAG_MFENCED, "??",
       "open", bp->left == ((void*)0) ? "" : bp->left,
       "close", bp->right == ((void*)0) ? "" : bp->right);
  if (((void*)0) == post)
   post = print_otag(p, TAG_MROW, "");
  else
   print_otag(p, TAG_MROW, "");
 }

 eqn_box(p, bp->first);

out:
 if (((void*)0) != bp->bottom) {
  t = print_otag(p, TAG_MO, "");
  print_text(p, bp->bottom);
  print_tagq(p, t);
 }
 if (((void*)0) != bp->top) {
  t = print_otag(p, TAG_MO, "");
  print_text(p, bp->top);
  print_tagq(p, t);
 }

 if (((void*)0) != post)
  print_tagq(p, post);

 eqn_box(p, bp->next);
}
