
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_buf {int len; } ;
typedef int Char ;


 int bb_store (struct blk_buf*,int *) ;

void
bb_append(struct blk_buf *bb, Char *str)
{
    bb_store(bb, str);
    bb->len++;
}
