
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* property_name; int kind; int node_kind; void* local_abspath; } ;
typedef TYPE_1__ svn_wc_conflict_description2_t ;
typedef int svn_node_kind_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT_NO_RETURN (int ) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 void* apr_pstrdup (int *,char const*) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_wc_conflict_kind_property ;

svn_wc_conflict_description2_t *
svn_wc_conflict_description_create_prop2(const char *local_abspath,
                                         svn_node_kind_t node_kind,
                                         const char *property_name,
                                         apr_pool_t *result_pool)
{
  svn_wc_conflict_description2_t *conflict;

  SVN_ERR_ASSERT_NO_RETURN(svn_dirent_is_absolute(local_abspath));

  conflict = apr_pcalloc(result_pool, sizeof(*conflict));
  conflict->local_abspath = apr_pstrdup(result_pool, local_abspath);
  conflict->node_kind = node_kind;
  conflict->kind = svn_wc_conflict_kind_property;
  conflict->property_name = apr_pstrdup(result_pool, property_name);
  return conflict;
}
