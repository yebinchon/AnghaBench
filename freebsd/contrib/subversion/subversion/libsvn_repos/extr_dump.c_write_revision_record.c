
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_repos_t ;
typedef int svn_repos_authz_func_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_DATE ;
 int * apr_hash_make (int *) ;
 TYPE_1__* svn_hash_gets (int *,int ) ;
 int svn_hash_sets (int *,int ,TYPE_1__*) ;
 int svn_repos__dump_revision_record (int *,int ,int *,int *,int ,int *) ;
 int svn_repos_fs_revision_proplist (int **,int *,int ,int ,void*,int *) ;
 TYPE_1__* svn_string_create (int ,int *) ;
 int svn_time_from_cstring (int *,int ,int *) ;
 int svn_time_to_cstring (int ,int *) ;

__attribute__((used)) static svn_error_t *
write_revision_record(svn_stream_t *stream,
                      svn_repos_t *repos,
                      svn_revnum_t rev,
                      svn_boolean_t include_revprops,
                      svn_repos_authz_func_t authz_func,
                      void *authz_baton,
                      apr_pool_t *pool)
{
  apr_hash_t *props;
  apr_time_t timetemp;
  svn_string_t *datevalue;

  if (include_revprops)
    {
      SVN_ERR(svn_repos_fs_revision_proplist(&props, repos, rev,
                                             authz_func, authz_baton, pool));




      datevalue = svn_hash_gets(props, SVN_PROP_REVISION_DATE);
      if (datevalue)
        {
          SVN_ERR(svn_time_from_cstring(&timetemp, datevalue->data, pool));
          datevalue = svn_string_create(svn_time_to_cstring(timetemp, pool),
                                        pool);
          svn_hash_sets(props, SVN_PROP_REVISION_DATE, datevalue);
        }
    }
   else
    {


      props = apr_hash_make(pool);
    }

  SVN_ERR(svn_repos__dump_revision_record(stream, rev, ((void*)0), props,
                                          include_revprops,
                                          pool));
  return SVN_NO_ERROR;
}
