
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tbl_opts {int dummy; } ;
struct tbl_dat {TYPE_1__* layout; } ;
struct rofftbl {size_t (* len ) (int,int ) ;int arg; } ;
struct roffcol {size_t width; } ;
struct TYPE_2__ {int pos; } ;
 int abort () ;
 size_t stub1 (int,int ) ;
 size_t tblcalc_literal (struct rofftbl*,struct roffcol*,struct tbl_dat const*,size_t) ;
 size_t tblcalc_number (struct rofftbl*,struct roffcol*,struct tbl_opts const*,struct tbl_dat const*) ;

__attribute__((used)) static size_t
tblcalc_data(struct rofftbl *tbl, struct roffcol *col,
    const struct tbl_opts *opts, const struct tbl_dat *dp, size_t mw)
{
 size_t sz;



 switch (dp->layout->pos) {
 case 132:
 case 134:
  sz = (*tbl->len)(1, tbl->arg);
  if (col != ((void*)0) && col->width < sz)
   col->width = sz;
  return sz;
 case 130:
 case 135:
 case 131:
 case 128:
  return tblcalc_literal(tbl, col, dp, mw);
 case 129:
  return tblcalc_number(tbl, col, opts, dp);
 case 133:
  return 0;
 default:
  abort();
 }
}
