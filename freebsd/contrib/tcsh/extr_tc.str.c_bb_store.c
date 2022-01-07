
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_buf {size_t len; size_t size; int ** vec; } ;
typedef int Char ;


 int ** xrealloc (int **,int) ;

__attribute__((used)) static void
bb_store(struct blk_buf *bb, Char *str)
{
    if (bb->len == bb->size) {
 if (bb->size == 0)
     bb->size = 16;
 else
     bb->size *= 2;
 bb->vec = xrealloc(bb->vec, bb->size * sizeof (*bb->vec));
    }
    bb->vec[bb->len] = str;
}
