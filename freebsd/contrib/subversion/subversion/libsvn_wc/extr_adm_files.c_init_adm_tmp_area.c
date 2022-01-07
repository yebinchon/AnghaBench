
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__ADM_TMP ;
 int make_adm_subdir (char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
init_adm_tmp_area(const char *path, apr_pool_t *pool)
{

  SVN_ERR(make_adm_subdir(path, SVN_WC__ADM_TMP, pool));

  return SVN_NO_ERROR;
}
