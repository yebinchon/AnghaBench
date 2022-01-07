
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tbl_span {struct tbl_dat* last; struct tbl_dat* first; struct tbl_span* prev; TYPE_3__* layout; TYPE_2__* opts; } ;
struct TYPE_4__ {char const tab; } ;
struct tbl_node {int part; TYPE_1__ opts; } ;
struct tbl_dat {char* string; scalar_t__ pos; struct tbl_cell* layout; struct tbl_dat* next; scalar_t__ hspans; scalar_t__ vspans; scalar_t__ block; } ;
struct tbl_cell {scalar_t__ pos; scalar_t__ col; struct tbl_cell* next; } ;
struct TYPE_6__ {struct tbl_cell* last; struct tbl_cell* first; } ;
struct TYPE_5__ {scalar_t__ cols; } ;


 int MANDOCERR_TBLDATA_EXTRA ;
 int MANDOCERR_TBLDATA_SPAN ;
 scalar_t__ TBL_CELL_DHORIZ ;
 scalar_t__ TBL_CELL_DOWN ;
 scalar_t__ TBL_CELL_HORIZ ;
 scalar_t__ TBL_CELL_LEFT ;
 scalar_t__ TBL_CELL_SPAN ;
 scalar_t__ TBL_DATA_DATA ;
 scalar_t__ TBL_DATA_DHORIZ ;
 scalar_t__ TBL_DATA_HORIZ ;
 scalar_t__ TBL_DATA_NDHORIZ ;
 scalar_t__ TBL_DATA_NHORIZ ;
 scalar_t__ TBL_DATA_NONE ;
 int TBL_PART_CDATA ;
 struct tbl_cell* mandoc_calloc (int,int) ;
 struct tbl_dat* mandoc_malloc (int) ;
 int mandoc_msg (int ,int,int,char*,char const*) ;
 char* mandoc_strndup (char const*,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
getdata(struct tbl_node *tbl, struct tbl_span *dp,
  int ln, const char *p, int *pos)
{
 struct tbl_dat *dat, *pdat;
 struct tbl_cell *cp;
 struct tbl_span *pdp;
 int sv;






 sv = *pos;
 while (p[*pos] != '\0' && p[*pos] != tbl->opts.tab)
  (*pos)++;



 cp = dp->last == ((void*)0) ? dp->layout->first : dp->last->layout->next;
 while (cp != ((void*)0) && cp->pos == TBL_CELL_SPAN)
  cp = cp->next;
 if (cp == ((void*)0)) {
  if (dp->layout->last->col + 1 < dp->opts->cols) {
   cp = mandoc_calloc(1, sizeof(*cp));
   cp->pos = TBL_CELL_LEFT;
   dp->layout->last->next = cp;
   cp->col = dp->layout->last->col + 1;
   dp->layout->last = cp;
  } else {
   mandoc_msg(MANDOCERR_TBLDATA_EXTRA,
       ln, sv, "%s", p + sv);
   while (p[*pos] != '\0')
    (*pos)++;
   return;
  }
 }

 dat = mandoc_malloc(sizeof(*dat));
 dat->layout = cp;
 dat->next = ((void*)0);
 dat->string = ((void*)0);
 dat->hspans = 0;
 dat->vspans = 0;
 dat->block = 0;
 dat->pos = TBL_DATA_NONE;
 if (cp->pos == TBL_CELL_DOWN ||
     (*pos - sv == 2 && p[sv] == '\\' && p[sv + 1] == '^')) {
  pdp = dp;
  while ((pdp = pdp->prev) != ((void*)0)) {
   pdat = pdp->first;
   while (pdat != ((void*)0) &&
       pdat->layout->col < dat->layout->col)
    pdat = pdat->next;
   if (pdat == ((void*)0))
    break;
   if (pdat->layout->pos != TBL_CELL_DOWN &&
       strcmp(pdat->string, "\\^") != 0) {
    pdat->vspans++;
    break;
   }
  }
 }






 for (cp = cp->next; cp != ((void*)0); cp = cp->next)
  if (cp->pos == TBL_CELL_SPAN)
   dat->hspans++;
  else
   break;



 if (dp->last == ((void*)0))
  dp->first = dat;
 else
  dp->last->next = dat;
 dp->last = dat;







 if (*pos - sv == 2 && p[sv] == 'T' && p[sv + 1] == '{') {
  tbl->part = TBL_PART_CDATA;
  return;
 }

 dat->string = mandoc_strndup(p + sv, *pos - sv);

 if (p[*pos] != '\0')
  (*pos)++;

 if ( ! strcmp(dat->string, "_"))
  dat->pos = TBL_DATA_HORIZ;
 else if ( ! strcmp(dat->string, "="))
  dat->pos = TBL_DATA_DHORIZ;
 else if ( ! strcmp(dat->string, "\\_"))
  dat->pos = TBL_DATA_NHORIZ;
 else if ( ! strcmp(dat->string, "\\="))
  dat->pos = TBL_DATA_NDHORIZ;
 else
  dat->pos = TBL_DATA_DATA;

 if ((dat->layout->pos == TBL_CELL_HORIZ ||
     dat->layout->pos == TBL_CELL_DHORIZ ||
     dat->layout->pos == TBL_CELL_DOWN) &&
     dat->pos == TBL_DATA_DATA && *dat->string != '\0')
  mandoc_msg(MANDOCERR_TBLDATA_SPAN,
      ln, sv, "%s", dat->string);
}
