
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int copyfrom_known; int node_kind; int prop_mod; int text_mod; } ;
typedef TYPE_1__ svn_fs_path_change2_t ;
struct TYPE_7__ {int prop_mod; int text_mod; int kind; int noderev_id; } ;
typedef TYPE_2__ change_t ;
typedef int apr_pool_t ;


 int FALSE ;
 TYPE_1__* svn_fs__path_change_create_internal (int ,int ,int *) ;
 int svn_fs_base__id_copy (int ,int *) ;
 int svn_node_unknown ;

__attribute__((used)) static svn_fs_path_change2_t *
change_to_fs_change(const change_t *change,
                    apr_pool_t *result_pool)
{
  svn_fs_path_change2_t *result = svn_fs__path_change_create_internal(
                                    svn_fs_base__id_copy(change->noderev_id,
                                                         result_pool),
                                    change->kind,
                                    result_pool);
  result->text_mod = change->text_mod;
  result->prop_mod = change->prop_mod;
  result->node_kind = svn_node_unknown;
  result->copyfrom_known = FALSE;

  return result;
}
