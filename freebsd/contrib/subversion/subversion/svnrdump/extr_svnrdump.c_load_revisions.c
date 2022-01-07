
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int check_cancel ;
 int svn_rdump__load_dumpstream (int *,int *,int *,int ,int *,int ,int *,int *) ;
 int svn_stream_for_stdin2 (int **,int ,int *) ;
 int svn_stream_open_readonly (int **,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
load_revisions(svn_ra_session_t *session,
               svn_ra_session_t *aux_session,
               const char *dumpfile,
               svn_boolean_t quiet,
               apr_hash_t *skip_revprops,
               apr_pool_t *pool)
{
  svn_stream_t *output_stream;

  if (dumpfile)
    {
      SVN_ERR(svn_stream_open_readonly(&output_stream, dumpfile, pool, pool));
    }
  else
    {
      SVN_ERR(svn_stream_for_stdin2(&output_stream, TRUE, pool));
    }

  SVN_ERR(svn_rdump__load_dumpstream(output_stream, session, aux_session,
                                     quiet, skip_revprops,
                                     check_cancel, ((void*)0), pool));

  return SVN_NO_ERROR;
}
