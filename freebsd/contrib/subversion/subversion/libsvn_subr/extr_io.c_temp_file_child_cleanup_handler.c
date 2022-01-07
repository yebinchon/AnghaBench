
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temp_file_cleanup_s {int pool; } ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int apr_pool_cleanup_kill (int ,struct temp_file_cleanup_s*,int ) ;
 int temp_file_plain_cleanup_handler ;

__attribute__((used)) static apr_status_t
temp_file_child_cleanup_handler(void *baton)
{
  struct temp_file_cleanup_s *b = baton;

  apr_pool_cleanup_kill(b->pool, b,
                        temp_file_plain_cleanup_handler);

  return APR_SUCCESS;
}
