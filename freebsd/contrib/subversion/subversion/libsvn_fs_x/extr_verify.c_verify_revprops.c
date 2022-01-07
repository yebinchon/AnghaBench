
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int (* svn_cancel_func_t ) (void*) ;
typedef int apr_time_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_DATE ;
 int svn_fs_x__invalidate_revprop_generation (int *) ;
 int svn_fs_x__revision_prop (TYPE_1__**,int *,scalar_t__,int ,int ,int *,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_time_from_cstring (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
verify_revprops(svn_fs_t *fs,
                svn_revnum_t start,
                svn_revnum_t end,
                svn_cancel_func_t cancel_func,
                void *cancel_baton,
                apr_pool_t *scratch_pool)
{
  svn_revnum_t revision;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);



  svn_fs_x__invalidate_revprop_generation(fs);

  for (revision = start; revision < end; ++revision)
    {
      svn_string_t *date;
      apr_time_t timetemp;

      svn_pool_clear(iterpool);



      SVN_ERR(svn_fs_x__revision_prop(&date, fs, revision,
                                      SVN_PROP_REVISION_DATE, FALSE,
                                      iterpool, iterpool));



      if (date)
        SVN_ERR(svn_time_from_cstring(&timetemp, date->data, iterpool));

      if (cancel_func)
        SVN_ERR(cancel_func(cancel_baton));
    }

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
