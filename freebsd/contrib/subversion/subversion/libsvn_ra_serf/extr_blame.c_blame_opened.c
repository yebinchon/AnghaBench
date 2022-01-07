
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_txdelta_window_handler_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_serf__xml_estate_t ;
typedef int svn_ra_serf__dav_props_t ;
typedef int svn_prop_t ;
typedef int svn_error_t ;
struct TYPE_2__ {int * stream; int prop_diffs; int rev_props; int file_rev_baton; int (* file_rev ) (int ,char const*,int ,int ,int ,int *,void**,int ,int *) ;int * state_pool; } ;
typedef TYPE_1__ blame_context_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
typedef int apr_hash_t ;


 int FILE_REV ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int TXDELTA ;
 int apr_array_make (int *,int,int) ;
 int apr_hash_make (int *) ;
 int stub1 (int ,char const*,int ,int ,int ,int *,void**,int ,int *) ;
 int * svn_base64_decode (int ,int *) ;
 int svn_cstring_atoi64 (scalar_t__*,char const*) ;
 char* svn_hash_gets (int *,char*) ;
 int * svn_ra_serf__xml_gather_since (int *,int) ;
 int * svn_ra_serf__xml_state_pool (int *) ;
 int svn_txdelta_parse_svndiff (int ,void*,int ,int *) ;

__attribute__((used)) static svn_error_t *
blame_opened(svn_ra_serf__xml_estate_t *xes,
             void *baton,
             int entered_state,
             const svn_ra_serf__dav_props_t *tag,
             apr_pool_t *scratch_pool)
{
  blame_context_t *blame_ctx = baton;

  if (entered_state == FILE_REV)
    {
      apr_pool_t *state_pool = svn_ra_serf__xml_state_pool(xes);


      blame_ctx->rev_props = apr_hash_make(state_pool);
      blame_ctx->prop_diffs = apr_array_make(state_pool,
                                             5, sizeof(svn_prop_t));
      blame_ctx->state_pool = state_pool;


      blame_ctx->stream = ((void*)0);
    }
  else if (entered_state == TXDELTA)
    {
      apr_pool_t *state_pool = svn_ra_serf__xml_state_pool(xes);
      apr_hash_t *gathered = svn_ra_serf__xml_gather_since(xes, FILE_REV);
      const char *path;
      const char *rev_str;
      const char *merged_revision;
      svn_txdelta_window_handler_t txdelta;
      void *txdelta_baton;
      apr_int64_t rev;

      path = svn_hash_gets(gathered, "path");
      rev_str = svn_hash_gets(gathered, "rev");

      SVN_ERR(svn_cstring_atoi64(&rev, rev_str));
      merged_revision = svn_hash_gets(gathered, "merged-revision");

      SVN_ERR(blame_ctx->file_rev(blame_ctx->file_rev_baton,
                                  path, (svn_revnum_t)rev,
                                  blame_ctx->rev_props,
                                  merged_revision != ((void*)0),
                                  &txdelta, &txdelta_baton,
                                  blame_ctx->prop_diffs,
                                  state_pool));

      blame_ctx->stream = svn_base64_decode(svn_txdelta_parse_svndiff(
                                              txdelta, txdelta_baton,
                                              TRUE ,
                                              state_pool),
                                            state_pool);
    }

  return SVN_NO_ERROR;
}
