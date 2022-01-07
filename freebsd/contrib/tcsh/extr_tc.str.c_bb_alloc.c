
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_buf {int dummy; } ;


 struct blk_buf* xcalloc (int,int) ;

struct blk_buf *
bb_alloc(void)
{
    return xcalloc(1, sizeof(struct blk_buf));
}
