
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_pool_get (int *) ;
 int apr_pstrmemdup (int *,int ,int ) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_hash_sets (int *,char const*,int ) ;

__attribute__((used)) static svn_error_t *
add_externals(apr_hash_t *externals,
              const char *path,
              const svn_string_t *externals_prop_val)
{
  apr_pool_t *pool = apr_hash_pool_get(externals);
  const char *local_abspath;

  if (! externals_prop_val)
    return SVN_NO_ERROR;

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));

  svn_hash_sets(externals, local_abspath,
                apr_pstrmemdup(pool, externals_prop_val->data,
                               externals_prop_val->len));

  return SVN_NO_ERROR;
}
