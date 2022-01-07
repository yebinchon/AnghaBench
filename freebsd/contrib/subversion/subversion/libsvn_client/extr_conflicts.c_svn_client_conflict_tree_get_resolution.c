
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int resolution_tree; } ;
typedef TYPE_1__ svn_client_conflict_t ;
typedef int svn_client_conflict_option_id_t ;



svn_client_conflict_option_id_t
svn_client_conflict_tree_get_resolution(svn_client_conflict_t *conflict)
{
  return conflict->resolution_tree;
}
