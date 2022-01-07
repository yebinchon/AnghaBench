
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isoent {int dummy; } ;
struct idrent {int weight; int noff; struct idrent* wnext; struct idrent* avail; struct isoent* isoent; int rbnode; scalar_t__ rename_num; } ;
struct TYPE_2__ {struct idrent** last; } ;
struct idr {TYPE_1__ wait_list; int rbtree; int pool_idx; struct idrent* idrent_pool; } ;


 scalar_t__ __archive_rb_tree_find_node (int *,struct isoent*) ;
 int __archive_rb_tree_insert_node (int *,int *) ;

__attribute__((used)) static void
idr_register(struct idr *idr, struct isoent *isoent, int weight, int noff)
{
 struct idrent *idrent, *n;

 idrent = &(idr->idrent_pool[idr->pool_idx++]);
 idrent->wnext = idrent->avail = ((void*)0);
 idrent->isoent = isoent;
 idrent->weight = weight;
 idrent->noff = noff;
 idrent->rename_num = 0;

 if (!__archive_rb_tree_insert_node(&(idr->rbtree), &(idrent->rbnode))) {
  n = (struct idrent *)__archive_rb_tree_find_node(
      &(idr->rbtree), idrent->isoent);
  if (n != ((void*)0)) {

   idrent->avail = n;
   *idr->wait_list.last = idrent;
   idr->wait_list.last = &(idrent->wnext);
  }
 }
}
