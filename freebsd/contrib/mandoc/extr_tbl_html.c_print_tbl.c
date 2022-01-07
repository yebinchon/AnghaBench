
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vbuf ;
struct tbl_span {scalar_t__ pos; struct tbl_span* next; struct tbl_dat* first; TYPE_1__* layout; } ;
struct tbl_dat {int hspans; scalar_t__ vspans; int * string; struct tbl_cell* layout; struct tbl_dat* next; } ;
struct tbl_cell {int pos; int flags; int vert; struct tbl_cell* next; } ;
struct tag {int dummy; } ;
struct TYPE_4__ {int * cols; } ;
struct html {TYPE_2__ tbl; int flags; int * tblt; } ;
typedef int hbuf ;
struct TYPE_3__ {int vert; } ;


 int HTML_NONOSPACE ;
 int HTML_NOSPACE ;
 int TAG_TD ;
 int TAG_TR ;
 int TBL_CELL_BALIGN ;

 int TBL_CELL_DOWN ;


 int TBL_CELL_SPAN ;
 int TBL_CELL_TALIGN ;
 scalar_t__ TBL_SPAN_DATA ;


 int assert (int *) ;
 int free (int *) ;
 int html_tblopen (struct html*,struct tbl_span const*) ;
 struct tag* print_otag (struct html*,int ,char*,char*,char const*,char*,char const*,...) ;
 int print_stagq (struct html*,struct tag*) ;
 int print_tagq (struct html*,struct tag*) ;
 int print_tblclose (struct html*) ;
 int print_text (struct html*,int *) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strcmp (int *,char*) ;

void
print_tbl(struct html *h, const struct tbl_span *sp)
{
 const struct tbl_dat *dp;
 const struct tbl_cell *cp;
 const struct tbl_span *psp;
 struct tag *tt;
 const char *hspans, *vspans, *halign, *valign;
 const char *bborder, *lborder, *rborder;
 char hbuf[4], vbuf[4];
 int i;

 if (h->tblt == ((void*)0))
  html_tblopen(h, sp);






 if (sp->pos != TBL_SPAN_DATA)
  return;



 h->flags |= HTML_NONOSPACE;
 h->flags |= HTML_NOSPACE;



 switch (sp->layout->vert) {
 case 2:
  lborder = "double";
  break;
 case 1:
  lborder = "solid";
  break;
 default:
  lborder = ((void*)0);
  break;
 }



 bborder = ((void*)0);
 if ((psp = sp->next) != ((void*)0)) {
  switch (psp->pos) {
  case 129:
   bborder = "double";
   break;
  case 128:
   bborder = "solid";
   break;
  default:
   break;
  }
 }

 tt = print_otag(h, TAG_TR, "ss",
     "border-left-style", lborder,
     "border-bottom-style", bborder);

 for (dp = sp->first; dp != ((void*)0); dp = dp->next) {
  print_stagq(h, tt);







  cp = dp->layout;
  if (cp->pos == TBL_CELL_SPAN || cp->pos == TBL_CELL_DOWN ||
      (dp->string != ((void*)0) && strcmp(dp->string, "\\^") == 0))
   continue;



  if (dp->hspans > 0) {
   (void)snprintf(hbuf, sizeof(hbuf),
       "%d", dp->hspans + 1);
   hspans = hbuf;
  } else
   hspans = ((void*)0);
  if (dp->vspans > 0) {
   (void)snprintf(vbuf, sizeof(vbuf),
       "%d", dp->vspans + 1);
   vspans = vbuf;
  } else
   vspans = ((void*)0);

  switch (cp->pos) {
  case 132:
   halign = "center";
   break;
  case 130:
  case 131:
   halign = "right";
   break;
  default:
   halign = ((void*)0);
   break;
  }
  if (cp->flags & TBL_CELL_TALIGN)
   valign = "top";
  else if (cp->flags & TBL_CELL_BALIGN)
   valign = "bottom";
  else
   valign = ((void*)0);

  for (i = dp->hspans; i > 0; i--)
   cp = cp->next;
  switch (cp->vert) {
  case 2:
   rborder = "double";
   break;
  case 1:
   rborder = "solid";
   break;
  default:
   rborder = ((void*)0);
   break;
  }



  print_otag(h, TAG_TD, "??sss",
      "colspan", hspans, "rowspan", vspans,
      "vertical-align", valign,
      "text-align", halign,
      "border-right-style", rborder);
  if (dp->string != ((void*)0))
   print_text(h, dp->string);
 }

 print_tagq(h, tt);

 h->flags &= ~HTML_NONOSPACE;

 if (sp->next == ((void*)0)) {
  assert(h->tbl.cols);
  free(h->tbl.cols);
  h->tbl.cols = ((void*)0);
  print_tblclose(h);
 }
}
