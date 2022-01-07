
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_wc_operation_t ;
typedef int svn_wc_conflict_version_t ;
struct TYPE_4__ {char const* path; int * src_right_version; int * src_left_version; int operation; int * access; int kind; int node_kind; } ;
typedef TYPE_1__ svn_wc_conflict_description_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_node_kind_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_wc_conflict_kind_tree ;

svn_wc_conflict_description_t *
svn_wc_conflict_description_create_tree(
                            const char *path,
                            svn_wc_adm_access_t *adm_access,
                            svn_node_kind_t node_kind,
                            svn_wc_operation_t operation,
                            svn_wc_conflict_version_t *src_left_version,
                            svn_wc_conflict_version_t *src_right_version,
                            apr_pool_t *pool)
{
  svn_wc_conflict_description_t *conflict;

  conflict = apr_pcalloc(pool, sizeof(*conflict));
  conflict->path = path;
  conflict->node_kind = node_kind;
  conflict->kind = svn_wc_conflict_kind_tree;
  conflict->access = adm_access;
  conflict->operation = operation;
  conflict->src_left_version = src_left_version;
  conflict->src_right_version = src_right_version;
  return conflict;
}
