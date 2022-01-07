
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_mergeinfo_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
dummy_mergeinfo_receiver(const char *path,
                         svn_mergeinfo_t mergeinfo,
                         void *baton,
                         apr_pool_t *scratch_pool)
{
  return SVN_NO_ERROR;
}
