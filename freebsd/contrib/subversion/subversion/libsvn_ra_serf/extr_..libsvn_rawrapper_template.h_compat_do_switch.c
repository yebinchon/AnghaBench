
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
struct TYPE_2__ {int (* do_switch ) (void*,int const**,void**,int ,char const*,int ,char const*,int ,int ,int const*,void*,int *,int *) ;} ;


 int FALSE ;
 int SVN_DEPTH_INFINITY_OR_FILES (int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_1__ VTBL ;
 int compat_wrap_reporter (int const**,void**,int const*,void*,int *) ;
 int stub1 (void*,int const**,void**,int ,char const*,int ,char const*,int ,int ,int const*,void*,int *,int *) ;

__attribute__((used)) static svn_error_t *compat_do_switch(void *session_baton,
                                     const svn_ra_reporter_t **reporter,
                                     void **report_baton,
                                     svn_revnum_t revision_to_switch_to,
                                     const char *switch_target,
                                     svn_boolean_t recurse,
                                     const char *switch_url,
                                     const svn_delta_editor_t *editor,
                                     void *switch_baton,
                                     apr_pool_t *pool)
{
  const svn_ra_reporter3_t *reporter3;
  void *baton3;
  svn_depth_t depth = SVN_DEPTH_INFINITY_OR_FILES(recurse);

  SVN_ERR(VTBL.do_switch(session_baton, &reporter3, &baton3,
                         revision_to_switch_to, switch_target, depth,
                         switch_url,
                         FALSE ,
                         TRUE ,
                         editor, switch_baton,
                         pool , pool ));

  compat_wrap_reporter(reporter, report_baton, reporter3, baton3, pool);

  return SVN_NO_ERROR;
}
