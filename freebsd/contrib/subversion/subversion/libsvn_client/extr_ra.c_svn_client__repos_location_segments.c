
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_location_segment_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct gls_receiver_baton_t {int * pool; int * ctx; int * segments; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_array_make (int *,int,int) ;
 int compare_segments ;
 int gls_receiver ;
 int svn_client__ensure_ra_session_url (char const**,int *,char const*,int *) ;
 int svn_error_compose_create (int *,int ) ;
 int * svn_ra_get_location_segments (int *,char*,int ,int ,int ,int ,struct gls_receiver_baton_t*,int *) ;
 int svn_ra_reparent (int *,char const*,int *) ;
 int svn_sort__array (int *,int ) ;

svn_error_t *
svn_client__repos_location_segments(apr_array_header_t **segments,
                                    svn_ra_session_t *ra_session,
                                    const char *url,
                                    svn_revnum_t peg_revision,
                                    svn_revnum_t start_revision,
                                    svn_revnum_t end_revision,
                                    svn_client_ctx_t *ctx,
                                    apr_pool_t *pool)
{
  struct gls_receiver_baton_t gls_receiver_baton;
  const char *old_session_url;
  svn_error_t *err;

  *segments = apr_array_make(pool, 8, sizeof(svn_location_segment_t *));
  gls_receiver_baton.segments = *segments;
  gls_receiver_baton.ctx = ctx;
  gls_receiver_baton.pool = pool;
  SVN_ERR(svn_client__ensure_ra_session_url(&old_session_url, ra_session,
                                            url, pool));
  err = svn_ra_get_location_segments(ra_session, "", peg_revision,
                                     start_revision, end_revision,
                                     gls_receiver, &gls_receiver_baton,
                                     pool);
  SVN_ERR(svn_error_compose_create(
            err, svn_ra_reparent(ra_session, old_session_url, pool)));
  svn_sort__array(*segments, compare_segments);
  return SVN_NO_ERROR;
}
