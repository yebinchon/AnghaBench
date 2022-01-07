
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icode {int cur_mark; int root; } ;


 int make_marks (struct icode*,int ) ;

__attribute__((used)) static void
mark_code(struct icode *ic)
{
 ic->cur_mark += 1;
 make_marks(ic, ic->root);
}
