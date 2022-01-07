
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
struct TYPE_3__ {int (* finish_report ) (void*,int *) ;int (* set_path ) (void*,char*,int ,int ,int ,int *,int *) ;} ;
typedef TYPE_1__ svn_ra_reporter3_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int check_cancel ;
 int dump_revision_header (int *,int *,int ,int *) ;
 int stderr ;
 int stub1 (void*,char*,int ,int ,int ,int *,int *) ;
 int stub2 (void*,int *) ;
 int svn_cmdline_fprintf (int ,int *,char*,int ) ;
 int svn_depth_infinity ;
 int svn_ra_do_update3 (int *,TYPE_1__ const**,void**,int ,char*,int ,int ,int ,int const*,void*,int *,int *) ;
 int svn_ra_get_path_relative_to_root (int *,char const**,char const*,int *) ;
 int svn_ra_get_session_url (int *,char const**,int *) ;
 int svn_rdump__get_dump_editor (int const**,void**,int ,int *,int *,char const*,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
dump_initial_full_revision(svn_ra_session_t *session,
                           svn_ra_session_t *extra_ra_session,
                           svn_stream_t *stdout_stream,
                           svn_revnum_t revision,
                           svn_boolean_t quiet,
                           apr_pool_t *pool)
{
  const svn_ra_reporter3_t *reporter;
  void *report_baton;
  const svn_delta_editor_t *dump_editor;
  void *dump_baton;
  const char *session_url, *source_relpath;
  SVN_ERR(svn_ra_get_session_url(session, &session_url, pool));
  SVN_ERR(svn_ra_get_path_relative_to_root(session, &source_relpath,
                                           session_url, pool));


  SVN_ERR(dump_revision_header(session, stdout_stream, revision, pool));







  SVN_ERR(svn_rdump__get_dump_editor(&dump_editor, &dump_baton, revision,
                                     stdout_stream, extra_ra_session,
                                     source_relpath, check_cancel, ((void*)0), pool));
  SVN_ERR(svn_ra_do_update3(session, &reporter, &report_baton, revision,
                            "", svn_depth_infinity, FALSE, FALSE,
                            dump_editor, dump_baton, pool, pool));
  SVN_ERR(reporter->set_path(report_baton, "", revision,
                             svn_depth_infinity, TRUE, ((void*)0), pool));
  SVN_ERR(reporter->finish_report(report_baton, pool));


  if (! quiet)
    SVN_ERR(svn_cmdline_fprintf(stderr, pool, "* Dumped revision %lu.\n",
                                revision));

  return SVN_NO_ERROR;
}
