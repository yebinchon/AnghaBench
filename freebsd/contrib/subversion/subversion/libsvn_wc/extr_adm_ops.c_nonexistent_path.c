
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int SVN_WC__ADM_NONEXISTENT_PATH ;
 char const* svn_wc__adm_child (char const*,int ,int *) ;

__attribute__((used)) static const char *
nonexistent_path(const char *wcroot_abspath, apr_pool_t *scratch_pool)
{
  return svn_wc__adm_child(wcroot_abspath, SVN_WC__ADM_NONEXISTENT_PATH,
                           scratch_pool);
}
