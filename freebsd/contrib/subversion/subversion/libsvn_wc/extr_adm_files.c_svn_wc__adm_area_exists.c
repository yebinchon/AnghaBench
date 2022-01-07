
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int svn_error_clear (int *) ;
 int * svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_none ;
 char* svn_wc__adm_child (char const*,int *,int *) ;

svn_boolean_t
svn_wc__adm_area_exists(const char *adm_abspath,
                        apr_pool_t *pool)
{
  const char *path = svn_wc__adm_child(adm_abspath, ((void*)0), pool);
  svn_node_kind_t kind;
  svn_error_t *err;

  err = svn_io_check_path(path, &kind, pool);
  if (err)
    {
      svn_error_clear(err);

      return FALSE;
    }

  return kind != svn_node_none;
}
