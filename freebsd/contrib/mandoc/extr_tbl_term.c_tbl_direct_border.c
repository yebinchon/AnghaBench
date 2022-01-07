
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {size_t (* width ) (struct termp*,int) ;size_t viscol; int (* letter ) (struct termp*,int) ;} ;


 int* borders_locale ;
 size_t stub1 (struct termp*,int) ;
 int stub2 (struct termp*,int) ;

__attribute__((used)) static void
tbl_direct_border(struct termp *tp, int c, size_t len)
{
 size_t i, sz;

 c = borders_locale[c];
 sz = (*tp->width)(tp, c);
 for (i = 0; i < len; i += sz) {
  (*tp->letter)(tp, c);
  tp->viscol += sz;
 }
}
