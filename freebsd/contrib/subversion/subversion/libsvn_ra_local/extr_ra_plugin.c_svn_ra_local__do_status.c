
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_ra_reporter3_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_delta_editor_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * make_reporter (int *,int const**,void**,int ,char const*,int *,int ,int ,int ,int ,int const*,void*,int *,int *) ;

__attribute__((used)) static svn_error_t *
svn_ra_local__do_status(svn_ra_session_t *session,
                        const svn_ra_reporter3_t **reporter,
                        void **report_baton,
                        const char *status_target,
                        svn_revnum_t revision,
                        svn_depth_t depth,
                        const svn_delta_editor_t *status_editor,
                        void *status_baton,
                        apr_pool_t *pool)
{
  return make_reporter(session,
                       reporter,
                       report_baton,
                       revision,
                       status_target,
                       ((void*)0),
                       FALSE,
                       depth,
                       FALSE,
                       FALSE,
                       status_editor,
                       status_baton,
                       pool, pool);
}
