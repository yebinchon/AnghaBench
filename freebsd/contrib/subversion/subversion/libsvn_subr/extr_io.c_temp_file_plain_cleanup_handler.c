
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temp_file_cleanup_s {int pool; scalar_t__ fname_apr; } ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int WIN32_RETRY_LOOP (int ,int ) ;
 int apr_file_remove (scalar_t__,int ) ;

__attribute__((used)) static apr_status_t
temp_file_plain_cleanup_handler(void *baton)
{
  struct temp_file_cleanup_s *b = baton;
  apr_status_t apr_err = APR_SUCCESS;

  if (b->fname_apr)
    {
      apr_err = apr_file_remove(b->fname_apr, b->pool);
      WIN32_RETRY_LOOP(apr_err, apr_file_remove(b->fname_apr, b->pool));
    }

  return apr_err;
}
