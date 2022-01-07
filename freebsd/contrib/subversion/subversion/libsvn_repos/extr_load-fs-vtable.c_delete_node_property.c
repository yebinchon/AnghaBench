
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct revision_baton {TYPE_1__* pb; int txn_root; scalar_t__ skipped; } ;
struct node_baton {int pool; int path; struct revision_baton* rb; } ;
struct TYPE_2__ {int validate_props; } ;


 int * SVN_NO_ERROR ;
 int * change_node_prop (int ,int ,char const*,int *,int ,int ) ;

__attribute__((used)) static svn_error_t *
delete_node_property(void *baton,
                     const char *name)
{
  struct node_baton *nb = baton;
  struct revision_baton *rb = nb->rb;


  if (rb->skipped)
    return SVN_NO_ERROR;

  return change_node_prop(rb->txn_root, nb->path, name, ((void*)0),
                          rb->pb->validate_props, nb->pool);
}
