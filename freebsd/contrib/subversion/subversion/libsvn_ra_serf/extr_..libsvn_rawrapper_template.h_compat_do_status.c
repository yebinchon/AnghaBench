
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_reporter_t ;
typedef int svn_ra_reporter3_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_delta_editor_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_2__ {int (* do_status ) (void*,int const**,void**,char const*,int ,int ,int const*,void*,int *) ;} ;


 int SVN_DEPTH_INFINITY_OR_IMMEDIATES (int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__ VTBL ;
 int compat_wrap_reporter (int const**,void**,int const*,void*,int *) ;
 int stub1 (void*,int const**,void**,char const*,int ,int ,int const*,void*,int *) ;

__attribute__((used)) static svn_error_t *compat_do_status(void *session_baton,
                                     const svn_ra_reporter_t **reporter,
                                     void **report_baton,
                                     const char *status_target,
                                     svn_revnum_t revision,
                                     svn_boolean_t recurse,
                                     const svn_delta_editor_t *editor,
                                     void *status_baton,
                                     apr_pool_t *pool)
{
  const svn_ra_reporter3_t *reporter3;
  void *baton3;
  svn_depth_t depth = SVN_DEPTH_INFINITY_OR_IMMEDIATES(recurse);

  SVN_ERR(VTBL.do_status(session_baton, &reporter3, &baton3, status_target,
                         revision, depth, editor, status_baton, pool));

  compat_wrap_reporter(reporter, report_baton, reporter3, baton3, pool);

  return SVN_NO_ERROR;
}
