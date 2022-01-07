
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_cache__t ;
typedef scalar_t__ svn_cache__error_handler_t ;
struct dump_cache_baton_t {int * cache; int * pool; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct dump_cache_baton_t* apr_palloc (int *,int) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,struct dump_cache_baton_t*,int ,int ) ;
 int dump_cache_statistics ;
 int svn_cache__set_error_handler (int *,scalar_t__,int *,int *) ;

__attribute__((used)) static svn_error_t *
init_callbacks(svn_cache__t *cache,
               svn_fs_t *fs,
               svn_cache__error_handler_t error_handler,
               apr_pool_t *pool)
{
  if (cache != ((void*)0))
    {
      if (error_handler)
        SVN_ERR(svn_cache__set_error_handler(cache,
                                             error_handler,
                                             fs,
                                             pool));

    }

  return SVN_NO_ERROR;
}
