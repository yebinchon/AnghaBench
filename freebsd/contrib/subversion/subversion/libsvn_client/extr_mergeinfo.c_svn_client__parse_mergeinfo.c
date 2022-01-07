
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_wc_context_t ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int * svn_mergeinfo_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 int svn_mergeinfo_parse (int **,int ,int *) ;
 int svn_wc_prop_get2 (TYPE_1__ const**,int *,char const*,int ,int *,int *) ;

svn_error_t *
svn_client__parse_mergeinfo(svn_mergeinfo_t *mergeinfo,
                            svn_wc_context_t *wc_ctx,
                            const char *local_abspath,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  const svn_string_t *propval;

  *mergeinfo = ((void*)0);




  SVN_ERR(svn_wc_prop_get2(&propval, wc_ctx, local_abspath, SVN_PROP_MERGEINFO,
                           scratch_pool, scratch_pool));
  if (propval)
    SVN_ERR(svn_mergeinfo_parse(mergeinfo, propval->data, result_pool));

  return SVN_NO_ERROR;
}
