
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_ra_reporter2_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_boolean_t ;
struct reporter_3in2_baton {int reporter3_baton; int reporter3; } ;
typedef int apr_pool_t ;
struct TYPE_5__ {int * (* do_status ) (TYPE_2__*,int *,int *,char const*,int ,int ,int const*,void*,int *) ;} ;


 int SVN_DEPTH_INFINITY_OR_IMMEDIATES (int ) ;
 int SVN_ERR_ASSERT (int) ;
 struct reporter_3in2_baton* apr_palloc (int *,int) ;
 int reporter_3in2_wrapper ;
 int * stub1 (TYPE_2__*,int *,int *,char const*,int ,int ,int const*,void*,int *) ;
 scalar_t__ svn_path_is_empty (char const*) ;
 scalar_t__ svn_path_is_single_path_component (char const*) ;

svn_error_t *svn_ra_do_status(svn_ra_session_t *session,
                              const svn_ra_reporter2_t **reporter,
                              void **report_baton,
                              const char *status_target,
                              svn_revnum_t revision,
                              svn_boolean_t recurse,
                              const svn_delta_editor_t *status_editor,
                              void *status_baton,
                              apr_pool_t *pool)
{
  struct reporter_3in2_baton *b = apr_palloc(pool, sizeof(*b));
  SVN_ERR_ASSERT(svn_path_is_empty(status_target)
                 || svn_path_is_single_path_component(status_target));
  *reporter = &reporter_3in2_wrapper;
  *report_baton = b;
  return session->vtable->do_status(session,
                                    &(b->reporter3), &(b->reporter3_baton),
                                    status_target, revision,
                                    SVN_DEPTH_INFINITY_OR_IMMEDIATES(recurse),
                                    status_editor, status_baton, pool);
}
