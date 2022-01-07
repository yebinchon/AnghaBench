
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_mutex__t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int TRUE ;
 scalar_t__ apr_hash_make (int *) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,int *,int ,int ) ;
 scalar_t__ assume_native_charset_is_utf8 ;
 int svn_error_clear (int *) ;
 int * svn_mutex__init (int **,int ,int *) ;
 int * svn_pool_create (int *) ;
 int xlate_cleanup ;
 scalar_t__ xlate_handle_hash ;
 int * xlate_handle_mutex ;

void
svn_utf_initialize2(svn_boolean_t assume_native_utf8,
                    apr_pool_t *pool)
{
  if (!xlate_handle_hash)
    {




      apr_pool_t *subpool = svn_pool_create(pool);
      svn_mutex__t *mutex;
      svn_error_t *err = svn_mutex__init(&mutex, TRUE, subpool);
      if (err)
        {
          svn_error_clear(err);
          return;
        }

      xlate_handle_mutex = mutex;
      xlate_handle_hash = apr_hash_make(subpool);

      apr_pool_cleanup_register(subpool, ((void*)0), xlate_cleanup,
                                apr_pool_cleanup_null);
    }

    if (!assume_native_charset_is_utf8)
      assume_native_charset_is_utf8 = assume_native_utf8;
}
