
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct promotenode {TYPE_1__* ds; } ;
typedef int list_t ;
struct TYPE_2__ {int ds_deadlist; } ;


 int UINT64_MAX ;
 int dsl_deadlist_space_range (int *,scalar_t__,int ,scalar_t__*,scalar_t__*,scalar_t__*) ;
 struct promotenode* list_head (int *) ;
 struct promotenode* list_next (int *,struct promotenode*) ;

__attribute__((used)) static int
snaplist_space(list_t *l, uint64_t mintxg, uint64_t *spacep)
{
 struct promotenode *snap;

 *spacep = 0;
 for (snap = list_head(l); snap; snap = list_next(l, snap)) {
  uint64_t used, comp, uncomp;
  dsl_deadlist_space_range(&snap->ds->ds_deadlist,
      mintxg, UINT64_MAX, &used, &comp, &uncomp);
  *spacep += used;
 }
 return (0);
}
