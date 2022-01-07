
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * apr_hash_make (int *) ;
 int svn_hash_sets (int *,char const*,char const*) ;
 char const* svn_log__unlock (int *,int ,int *) ;

const char *
svn_log__unlock_one_path(const char *path, svn_boolean_t break_lock,
                         apr_pool_t *pool)
{
  apr_hash_t *paths = apr_hash_make(pool);
  svn_hash_sets(paths, path, path);
  return svn_log__unlock(paths, break_lock, pool);
}
