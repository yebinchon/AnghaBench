
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tbl_node {scalar_t__ part; int line; int pos; } ;


 int MANDOCERR_TBLDATA_BLK ;
 scalar_t__ TBL_PART_CDATA ;
 scalar_t__ TBL_PART_LAYOUT ;
 int mandoc_msg (int ,int,int,char*) ;

void
tbl_restart(int line, int pos, struct tbl_node *tbl)
{
 if (tbl->part == TBL_PART_CDATA)
  mandoc_msg(MANDOCERR_TBLDATA_BLK, line, pos, "T&");

 tbl->part = TBL_PART_LAYOUT;
 tbl->line = line;
 tbl->pos = pos;
}
