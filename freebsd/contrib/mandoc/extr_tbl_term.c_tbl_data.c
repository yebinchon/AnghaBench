
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int dummy; } ;
struct tbl_opts {int dummy; } ;
struct tbl_dat {int pos; } ;
struct tbl_cell {int pos; } ;
struct roffcol {int width; } ;


 int BHORIZ ;
 int abort () ;
 int tbl_fill_border (struct termp*,int,int ) ;
 int tbl_literal (struct termp*,struct tbl_dat const*,struct roffcol const*) ;
 int tbl_number (struct termp*,struct tbl_opts const*,struct tbl_dat const*,struct roffcol const*) ;

__attribute__((used)) static void
tbl_data(struct termp *tp, const struct tbl_opts *opts,
    const struct tbl_cell *cp, const struct tbl_dat *dp,
    const struct roffcol *col)
{
 switch (cp->pos) {
 case 138:
  tbl_fill_border(tp, BHORIZ, col->width);
  return;
 case 140:
  tbl_fill_border(tp, BHORIZ * 2, col->width);
  return;
 default:
  break;
 }

 if (dp == ((void*)0))
  return;

 switch (dp->pos) {
 case 128:
  return;
 case 131:
 case 129:
  tbl_fill_border(tp, BHORIZ, col->width);
  return;
 case 130:
 case 132:
  tbl_fill_border(tp, BHORIZ * 2, col->width);
  return;
 default:
  break;
 }

 switch (cp->pos) {
 case 136:
 case 141:
 case 137:
 case 134:
  tbl_literal(tp, dp, col);
  break;
 case 135:
  tbl_number(tp, opts, dp, col);
  break;
 case 139:
 case 133:
  break;
 default:
  abort();
 }
}
