
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
dummy_handler_new_revision_record(void **revision_baton,
                                  apr_hash_t *headers,
                                  void *parse_baton,
                                  apr_pool_t *pool)
{
  *revision_baton = ((void*)0);
  return SVN_NO_ERROR;
}
