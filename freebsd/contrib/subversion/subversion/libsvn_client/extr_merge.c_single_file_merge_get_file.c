
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int rev; int url; } ;
typedef TYPE_1__ svn_client__pathrev_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int svn_client__ensure_ra_session_url (char const**,int *,int ,int *) ;
 int svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_io_file_del_on_pool_cleanup ;
 int * svn_ra_get_file (int *,char*,int ,int *,int *,int **,int *) ;
 int svn_ra_reparent (int *,char const*,int *) ;
 int svn_stream_close (int *) ;
 int svn_stream_open_unique (int **,char const**,int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
single_file_merge_get_file(const char **filename,
                           apr_hash_t **props,
                           svn_ra_session_t *ra_session,
                           const svn_client__pathrev_t *location,
                           const char *wc_target,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  svn_stream_t *stream;
  const char *old_sess_url;
  svn_error_t *err;

  SVN_ERR(svn_stream_open_unique(&stream, filename, ((void*)0),
                                 svn_io_file_del_on_pool_cleanup,
                                 result_pool, scratch_pool));

  SVN_ERR(svn_client__ensure_ra_session_url(&old_sess_url, ra_session, location->url,
                                            scratch_pool));
  err = svn_ra_get_file(ra_session, "", location->rev,
                        stream, ((void*)0), props, scratch_pool);
  SVN_ERR(svn_error_compose_create(
            err, svn_ra_reparent(ra_session, old_sess_url, scratch_pool)));

  return svn_error_trace(svn_stream_close(stream));
}
