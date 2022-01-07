
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int TRUE ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 scalar_t__ svn_dirent_is_child (char const*,char const*,int *) ;
 scalar_t__ svn_hash_gets (int *,char const*) ;

__attribute__((used)) static svn_boolean_t
is_external_path(apr_hash_t *externals,
                 const char *local_abspath,
                 apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;


  if (svn_hash_gets(externals, local_abspath))
    return TRUE;



  for (hi = apr_hash_first(scratch_pool, externals);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *external_abspath = apr_hash_this_key(hi);

      if (svn_dirent_is_child(local_abspath, external_abspath, ((void*)0)))
        return TRUE;
    }

  return FALSE;
}
