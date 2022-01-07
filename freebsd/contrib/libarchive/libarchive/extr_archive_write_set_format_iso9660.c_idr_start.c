
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * first; int ** last; } ;
struct idr {int num_size; int null_size; scalar_t__ pool_idx; TYPE_1__ wait_list; int rbtree; } ;
struct archive_write {int dummy; } ;
struct archive_rb_tree_ops {int dummy; } ;


 int ARCHIVE_OK ;
 int __archive_rb_tree_init (int *,struct archive_rb_tree_ops const*) ;
 int idr_ensure_poolsize (struct archive_write*,struct idr*,int) ;

__attribute__((used)) static int
idr_start(struct archive_write *a, struct idr *idr, int cnt, int ffmax,
    int num_size, int null_size, const struct archive_rb_tree_ops *rbt_ops)
{
 int r;

 (void)ffmax;

 r = idr_ensure_poolsize(a, idr, cnt);
 if (r != ARCHIVE_OK)
  return (r);
 __archive_rb_tree_init(&(idr->rbtree), rbt_ops);
 idr->wait_list.first = ((void*)0);
 idr->wait_list.last = &(idr->wait_list.first);
 idr->pool_idx = 0;
 idr->num_size = num_size;
 idr->null_size = null_size;
 return (ARCHIVE_OK);
}
