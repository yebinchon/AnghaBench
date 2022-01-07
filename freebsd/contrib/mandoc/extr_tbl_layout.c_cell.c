
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tbl_row {int vert; TYPE_1__* last; } ;
struct tbl_node {struct tbl_row* first_row; } ;
typedef enum tbl_cellt { ____Placeholder_tbl_cellt } tbl_cellt ;
struct TYPE_4__ {scalar_t__ name; int key; } ;
struct TYPE_3__ {scalar_t__ pos; } ;


 int KEYS_MAX ;
 int MANDOCERR_TBLLAYOUT_CHAR ;
 int MANDOCERR_TBLLAYOUT_DOWN ;
 int MANDOCERR_TBLLAYOUT_SPAN ;
 int MANDOCERR_TBLLAYOUT_VERT ;
 scalar_t__ TBL_CELL_DHORIZ ;
 int TBL_CELL_DOWN ;
 scalar_t__ TBL_CELL_HORIZ ;
 int TBL_CELL_SPAN ;
 int cell_alloc (struct tbl_node*,struct tbl_row*,int) ;
 TYPE_2__* keys ;
 int mandoc_msg (int ,int,int,char*,...) ;
 int mods (struct tbl_node*,int ,int,char const*,int*) ;
 scalar_t__ tolower (unsigned char) ;

__attribute__((used)) static void
cell(struct tbl_node *tbl, struct tbl_row *rp,
  int ln, const char *p, int *pos)
{
 int i;
 enum tbl_cellt c;



 while (p[*pos] == ' ' || p[*pos] == '\t' || p[*pos] == '|') {
  if (p[*pos] == '|') {
   if (rp->vert < 2)
    rp->vert++;
   else
    mandoc_msg(MANDOCERR_TBLLAYOUT_VERT,
        ln, *pos, ((void*)0));
  }
  (*pos)++;
 }

again:
 while (p[*pos] == ' ' || p[*pos] == '\t')
  (*pos)++;

 if (p[*pos] == '.' || p[*pos] == '\0')
  return;



 for (i = 0; i < KEYS_MAX; i++)
  if (tolower((unsigned char)p[*pos]) == keys[i].name)
   break;

 if (i == KEYS_MAX) {
  mandoc_msg(MANDOCERR_TBLLAYOUT_CHAR,
      ln, *pos, "%c", p[*pos]);
  (*pos)++;
  goto again;
 }
 c = keys[i].key;



 if (c == TBL_CELL_SPAN) {
  if (rp->last == ((void*)0))
   mandoc_msg(MANDOCERR_TBLLAYOUT_SPAN, ln, *pos, ((void*)0));
  else if (rp->last->pos == TBL_CELL_HORIZ ||
      rp->last->pos == TBL_CELL_DHORIZ)
   c = rp->last->pos;
 } else if (c == TBL_CELL_DOWN && rp == tbl->first_row)
  mandoc_msg(MANDOCERR_TBLLAYOUT_DOWN, ln, *pos, ((void*)0));

 (*pos)++;



 mods(tbl, cell_alloc(tbl, rp, c), ln, p, pos);
}
