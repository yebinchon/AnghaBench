
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tbl_span {scalar_t__ pos; TYPE_1__* opts; } ;
struct TYPE_4__ {int sulen; int slen; int len; int * cols; } ;
struct html {int * tblt; TYPE_2__ tbl; } ;
struct TYPE_3__ {int opts; } ;


 int TAG_TABLE ;
 int TBL_OPT_ALLBOX ;
 int TBL_OPT_BOX ;
 int TBL_OPT_DBOX ;
 scalar_t__ TBL_SPAN_DHORIZ ;
 scalar_t__ TBL_SPAN_HORIZ ;
 int assert (int) ;
 int html_close_paragraph (struct html*) ;
 int html_tbl_len ;
 int html_tbl_strlen ;
 int html_tbl_sulen ;
 int * print_otag (struct html*,int ,char*,char*,char*,char*,char*,char*,char*,char*) ;
 int tblcalc (TYPE_2__*,struct tbl_span const*,int ,int ) ;

__attribute__((used)) static void
html_tblopen(struct html *h, const struct tbl_span *sp)
{
 html_close_paragraph(h);
 if (h->tbl.cols == ((void*)0)) {
  h->tbl.len = html_tbl_len;
  h->tbl.slen = html_tbl_strlen;
  h->tbl.sulen = html_tbl_sulen;
  tblcalc(&h->tbl, sp, 0, 0);
 }
 assert(((void*)0) == h->tblt);
 h->tblt = print_otag(h, TAG_TABLE, "c?ss", "tbl",
     "border",
  sp->opts->opts & TBL_OPT_ALLBOX ? "1" : ((void*)0),
     "border-style",
  sp->opts->opts & TBL_OPT_DBOX ? "double" :
  sp->opts->opts & TBL_OPT_BOX ? "solid" : ((void*)0),
     "border-top-style",
  sp->pos == TBL_SPAN_DHORIZ ? "double" :
  sp->pos == TBL_SPAN_HORIZ ? "solid" : ((void*)0));
}
