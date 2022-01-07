
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
struct TYPE_5__ {int * (* do_diff ) (TYPE_2__*,int *,int *,int ,char const*,int ,int ,int ,char const*,int const*,void*,int *) ;} ;


 int SVN_DEPTH_INFINITY_OR_FILES (int ) ;
 int SVN_ERR_ASSERT (int) ;
 struct reporter_3in2_baton* apr_palloc (int *,int) ;
 int reporter_3in2_wrapper ;
 int * stub1 (TYPE_2__*,int *,int *,int ,char const*,int ,int ,int ,char const*,int const*,void*,int *) ;
 scalar_t__ svn_path_is_empty (char const*) ;
 scalar_t__ svn_path_is_single_path_component (char const*) ;

svn_error_t *svn_ra_do_diff2(svn_ra_session_t *session,
                             const svn_ra_reporter2_t **reporter,
                             void **report_baton,
                             svn_revnum_t revision,
                             const char *diff_target,
                             svn_boolean_t recurse,
                             svn_boolean_t ignore_ancestry,
                             svn_boolean_t text_deltas,
                             const char *versus_url,
                             const svn_delta_editor_t *diff_editor,
                             void *diff_baton,
                             apr_pool_t *pool)
{
  struct reporter_3in2_baton *b = apr_palloc(pool, sizeof(*b));
  SVN_ERR_ASSERT(svn_path_is_empty(diff_target)
                 || svn_path_is_single_path_component(diff_target));
  *reporter = &reporter_3in2_wrapper;
  *report_baton = b;
  return session->vtable->do_diff(session,
                                  &(b->reporter3), &(b->reporter3_baton),
                                  revision, diff_target,
                                  SVN_DEPTH_INFINITY_OR_FILES(recurse),
                                  ignore_ancestry, text_deltas, versus_url,
                                  diff_editor, diff_baton, pool);
}
