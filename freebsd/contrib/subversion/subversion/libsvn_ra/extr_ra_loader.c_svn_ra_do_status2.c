
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_ra_reporter3_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_delta_editor_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int * (* do_status ) (TYPE_2__*,int const**,void**,char const*,int ,int ,int const*,void*,int *) ;} ;


 int SVN_ERR_ASSERT (int) ;
 int * stub1 (TYPE_2__*,int const**,void**,char const*,int ,int ,int const*,void*,int *) ;
 scalar_t__ svn_path_is_empty (char const*) ;
 scalar_t__ svn_path_is_single_path_component (char const*) ;

svn_error_t *svn_ra_do_status2(svn_ra_session_t *session,
                               const svn_ra_reporter3_t **reporter,
                               void **report_baton,
                               const char *status_target,
                               svn_revnum_t revision,
                               svn_depth_t depth,
                               const svn_delta_editor_t *status_editor,
                               void *status_baton,
                               apr_pool_t *pool)
{
  SVN_ERR_ASSERT(svn_path_is_empty(status_target)
                 || svn_path_is_single_path_component(status_target));
  return session->vtable->do_status(session,
                                    reporter, report_baton,
                                    status_target, revision, depth,
                                    status_editor, status_baton, pool);
}
