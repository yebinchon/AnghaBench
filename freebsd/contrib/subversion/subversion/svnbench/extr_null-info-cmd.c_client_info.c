
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int svn_ra_session_t ;
struct TYPE_20__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_opt_revision_t ;
typedef int svn_lock_t ;
struct TYPE_21__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
struct TYPE_22__ {scalar_t__ kind; } ;
typedef TYPE_3__ svn_dirent_t ;
typedef int svn_depth_t ;
typedef int svn_client_ctx_t ;
struct TYPE_23__ {int rev; int url; } ;
typedef TYPE_4__ svn_client__pathrev_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_ILLEGAL_URL ;
 scalar_t__ SVN_ERR_RA_NOT_IMPLEMENTED ;
 scalar_t__ SVN_ERR_UNSUPPORTED_FEATURE ;
 TYPE_2__* SVN_NO_ERROR ;
 int _ (char*) ;
 int push_dir_info (int *,TYPE_4__*,char*,int*,int ,int *,int *) ;
 int svn_client__ra_session_from_path2 (int **,TYPE_4__**,char const*,int *,TYPE_1__ const*,TYPE_1__ const*,int *,int *) ;
 int svn_depth_empty ;
 int svn_depth_unknown ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_createf (int ,int *,int ,int ,int ) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_opt_revision_head ;
 TYPE_2__* svn_ra_get_lock (int *,int **,char*,int *) ;
 TYPE_2__* svn_ra_get_locks2 (int *,int **,char*,int ,int *) ;
 int svn_ra_stat (int *,char*,int ,TYPE_3__**,int *) ;
 int svn_uri_split (int *,char const**,int ,int *) ;

__attribute__((used)) static svn_error_t *
client_info(const char *abspath_or_url,
            const svn_opt_revision_t *peg_revision,
            const svn_opt_revision_t *revision,
            svn_depth_t depth,
            svn_boolean_t fetch_excluded,
            svn_boolean_t fetch_actual_only,
            const apr_array_header_t *changelists,
            int *counter,
            svn_client_ctx_t *ctx,
            apr_pool_t *pool)
{
  svn_ra_session_t *ra_session;
  svn_client__pathrev_t *pathrev;
  svn_lock_t *lock;
  const char *base_name;
  svn_dirent_t *the_ent;
  svn_error_t *err;

  if (depth == svn_depth_unknown)
    depth = svn_depth_empty;






  SVN_ERR(svn_client__ra_session_from_path2(&ra_session, &pathrev,
                                            abspath_or_url, ((void*)0), peg_revision,
                                            revision, ctx, pool));

  svn_uri_split(((void*)0), &base_name, pathrev->url, pool);


  SVN_ERR(svn_ra_stat(ra_session, "", pathrev->rev, &the_ent, pool));

  if (! the_ent)
    return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
                             _("URL '%s' non-existent in revision %ld"),
                             pathrev->url, pathrev->rev);


  err = svn_ra_get_lock(ra_session, &lock, "", pool);




  if (err && err->apr_err == SVN_ERR_RA_NOT_IMPLEMENTED)
    {
      svn_error_clear(err);
      lock = ((void*)0);
    }
  else if (err)
    return svn_error_trace(err);


  ++(*counter);


  if (depth > svn_depth_empty && (the_ent->kind == svn_node_dir))
    {
      apr_hash_t *locks;

      if (peg_revision->kind == svn_opt_revision_head)
        {
          err = svn_ra_get_locks2(ra_session, &locks, "", depth, pool);


          if (err &&
              (err->apr_err == SVN_ERR_RA_NOT_IMPLEMENTED
               || err->apr_err == SVN_ERR_UNSUPPORTED_FEATURE))
            svn_error_clear(err);
          else if (err)
            return svn_error_trace(err);
        }

      SVN_ERR(push_dir_info(ra_session, pathrev, "",
                            counter, depth, ctx, pool));
    }

  return SVN_NO_ERROR;
}
