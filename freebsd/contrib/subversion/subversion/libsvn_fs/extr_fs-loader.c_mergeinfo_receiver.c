
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_mergeinfo_t ;
typedef int svn_error_t ;
struct TYPE_2__ {int result_pool; int * mergeinfo; } ;
typedef TYPE_1__ mergeinfo_receiver_baton_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int svn_mergeinfo_dup (int ,int ) ;

__attribute__((used)) static svn_error_t *
mergeinfo_receiver(const char *path,
                   svn_mergeinfo_t mergeinfo,
                   void *baton,
                   apr_pool_t *scratch_pool)
{
  mergeinfo_receiver_baton_t *b = baton;
  *b->mergeinfo = svn_mergeinfo_dup(mergeinfo, b->result_pool);

  return SVN_NO_ERROR;
}
