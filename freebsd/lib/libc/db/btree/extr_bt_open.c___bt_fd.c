
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int bt_fd; int * bt_pinned; int bt_mp; } ;
struct TYPE_5__ {TYPE_2__* internal; } ;
typedef TYPE_1__ DB ;
typedef TYPE_2__ BTREE ;


 int B_INMEM ;
 int ENOENT ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int errno ;
 int mpool_put (int ,int *,int ) ;

int
__bt_fd(const DB *dbp)
{
 BTREE *t;

 t = dbp->internal;


 if (t->bt_pinned != ((void*)0)) {
  mpool_put(t->bt_mp, t->bt_pinned, 0);
  t->bt_pinned = ((void*)0);
 }


 if (F_ISSET(t, B_INMEM)) {
  errno = ENOENT;
  return (-1);
 }
 return (t->bt_fd);
}
