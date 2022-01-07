
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tbl_span {struct tbl_span* next; int * first; } ;
struct tbl_node {scalar_t__ part; int pos; int line; struct tbl_span* first_span; } ;


 int MANDOCERR_BLK_NOEND ;
 int MANDOCERR_TBLDATA_BLK ;
 int MANDOCERR_TBLDATA_NONE ;
 scalar_t__ TBL_PART_CDATA ;
 int mandoc_msg (int ,int ,int ,char*) ;

int
tbl_end(struct tbl_node *tbl, int still_open)
{
 struct tbl_span *sp;

 if (still_open)
  mandoc_msg(MANDOCERR_BLK_NOEND, tbl->line, tbl->pos, "TS");
 else if (tbl->part == TBL_PART_CDATA)
  mandoc_msg(MANDOCERR_TBLDATA_BLK, tbl->line, tbl->pos, "TE");

 sp = tbl->first_span;
 while (sp != ((void*)0) && sp->first == ((void*)0))
  sp = sp->next;
 if (sp == ((void*)0)) {
  mandoc_msg(MANDOCERR_TBLDATA_NONE, tbl->line, tbl->pos, ((void*)0));
  return 0;
 }
 return 1;
}
