
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_node_kind_t ;
struct TYPE_6__ {int pool; } ;
typedef TYPE_1__ svn_client_conflict_t ;
struct TYPE_7__ {int node_kind; } ;


 int SVN_ERR_ASSERT_NO_RETURN (int) ;
 scalar_t__ SVN_NO_ERROR ;
 scalar_t__ assert_tree_conflict (TYPE_1__*,int ) ;
 TYPE_3__* get_conflict_desc2_t (TYPE_1__*) ;

svn_node_kind_t
svn_client_conflict_tree_get_victim_node_kind(svn_client_conflict_t *conflict)
{
  SVN_ERR_ASSERT_NO_RETURN(assert_tree_conflict(conflict, conflict->pool)
                           == SVN_NO_ERROR);

  return get_conflict_desc2_t(conflict)->node_kind;
}
