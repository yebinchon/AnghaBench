
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


 int TRUE ;
 int * make_reporter (int *,int const**,void**,int ,char const*,int *,int ,int ,int ,int ,int const*,void*,int *,int *) ;

__attribute__((used)) static svn_error_t *
svn_ra_local__do_update(svn_ra_session_t *session,
                        const svn_ra_reporter3_t **reporter,
                        void **report_baton,
                        svn_revnum_t update_revision,
                        const char *update_target,
                        svn_depth_t depth,
                        svn_boolean_t send_copyfrom_args,
                        svn_boolean_t ignore_ancestry,
                        const svn_delta_editor_t *update_editor,
                        void *update_baton,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  return make_reporter(session,
                       reporter,
                       report_baton,
                       update_revision,
                       update_target,
                       ((void*)0),
                       TRUE,
                       depth,
                       send_copyfrom_args,
                       ignore_ancestry,
                       update_editor,
                       update_baton,
                       result_pool, scratch_pool);
}
