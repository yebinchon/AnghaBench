
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
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * svn_error_trace (int ) ;
 int svn_ra_do_update3 (int *,int const**,void**,int ,char const*,int ,int ,int ,int const*,void*,int *,int *) ;

svn_error_t *
svn_ra_do_update2(svn_ra_session_t *session,
                  const svn_ra_reporter3_t **reporter,
                  void **report_baton,
                  svn_revnum_t revision_to_update_to,
                  const char *update_target,
                  svn_depth_t depth,
                  svn_boolean_t send_copyfrom_args,
                  const svn_delta_editor_t *update_editor,
                  void *update_baton,
                  apr_pool_t *pool)
{
  return svn_error_trace(
            svn_ra_do_update3(session,
                              reporter, report_baton,
                              revision_to_update_to, update_target,
                              depth,
                              send_copyfrom_args,
                              FALSE ,
                              update_editor, update_baton,
                              pool, pool));
}
