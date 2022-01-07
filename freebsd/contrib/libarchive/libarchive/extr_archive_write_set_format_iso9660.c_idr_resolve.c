
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct idrent {int noff; TYPE_2__* avail; int rbnode; TYPE_1__* isoent; struct idrent* wnext; } ;
struct TYPE_6__ {struct idrent* first; } ;
struct idr {int rbtree; int null_size; int num_size; TYPE_3__ wait_list; } ;
struct TYPE_5__ {int rename_num; } ;
struct TYPE_4__ {scalar_t__ identifier; } ;


 int __archive_rb_tree_insert_node (int *,int *) ;
 int idr_extend_identifier (struct idrent*,int ,int ) ;

__attribute__((used)) static void
idr_resolve(struct idr *idr, void (*fsetnum)(unsigned char *p, int num))
{
 struct idrent *n;
 unsigned char *p;

 for (n = idr->wait_list.first; n != ((void*)0); n = n->wnext) {
  idr_extend_identifier(n, idr->num_size, idr->null_size);
  p = (unsigned char *)n->isoent->identifier + n->noff;
  do {
   fsetnum(p, n->avail->rename_num++);
  } while (!__archive_rb_tree_insert_node(
      &(idr->rbtree), &(n->rbnode)));
 }
}
