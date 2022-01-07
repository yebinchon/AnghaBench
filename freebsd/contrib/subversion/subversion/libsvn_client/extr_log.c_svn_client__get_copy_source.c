
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef void* svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_opt_revision_t ;
struct TYPE_21__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_22__ {char const* url; int rev; } ;
typedef TYPE_2__ svn_client__pathrev_t ;
struct TYPE_23__ {char* path; void* rev; int * pool; int is_first; int member_0; } ;
typedef TYPE_3__ copyfrom_info_t ;
typedef int apr_pool_t ;


 int SVN_ERR (TYPE_1__*) ;
 int SVN_ERR_ENTRY_MISSING_URL ;
 scalar_t__ SVN_ERR_FS_NOT_FOUND ;
 scalar_t__ SVN_ERR_RA_DAV_REQUEST_FAILED ;
 void* SVN_INVALID_REVNUM ;
 TYPE_1__* SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int copyfrom_info_receiver ;
 TYPE_1__* svn_client__ensure_ra_session_url (char const**,int *,char const*,int *) ;
 TYPE_1__* svn_client__ra_session_from_path2 (int **,TYPE_2__**,char const*,int *,int const*,int const*,int *,int *) ;
 TYPE_1__* svn_client__resolve_rev_and_url (TYPE_2__**,int *,char const*,int const*,int const*,int *,int *) ;
 TYPE_1__* svn_client_url_from_path2 (char const**,char const*,int *,int *,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_compose_create (TYPE_1__*,int ) ;
 TYPE_1__* svn_error_createf (int ,int *,int ,char const*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 scalar_t__ svn_path_is_url (char const*) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_1__* svn_ra_get_location_segments (int *,char*,int ,int ,void*,int ,TYPE_3__*,int *) ;
 int svn_ra_reparent (int *,char const*,int *) ;

svn_error_t *
svn_client__get_copy_source(const char **original_repos_relpath,
                            svn_revnum_t *original_revision,
                            const char *path_or_url,
                            const svn_opt_revision_t *revision,
                            svn_ra_session_t *ra_session,
                            svn_client_ctx_t *ctx,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  copyfrom_info_t copyfrom_info = { 0 };
  apr_pool_t *sesspool = svn_pool_create(scratch_pool);
  svn_client__pathrev_t *at_loc;
  const char *old_session_url = ((void*)0);

  copyfrom_info.is_first = TRUE;
  copyfrom_info.path = ((void*)0);
  copyfrom_info.rev = SVN_INVALID_REVNUM;
  copyfrom_info.pool = result_pool;

  if (!ra_session)
    {
      SVN_ERR(svn_client__ra_session_from_path2(&ra_session, &at_loc,
                                                path_or_url, ((void*)0),
                                                revision, revision,
                                                ctx, sesspool));
    }
  else
    {
      const char *url;
      if (svn_path_is_url(path_or_url))
        url = path_or_url;
      else
        {
          SVN_ERR(svn_client_url_from_path2(&url, path_or_url, ctx, sesspool,
                                            sesspool));

          if (! url)
            return svn_error_createf(SVN_ERR_ENTRY_MISSING_URL, ((void*)0),
                                     _("'%s' has no URL"), path_or_url);
        }

      SVN_ERR(svn_client__ensure_ra_session_url(&old_session_url, ra_session,
                                                url, sesspool));

      err = svn_client__resolve_rev_and_url(&at_loc, ra_session, path_or_url,
                                            revision, revision, ctx,
                                            sesspool);



      SVN_ERR(svn_error_compose_create(
                err,
                svn_ra_reparent(ra_session, err ? old_session_url
                                                : at_loc->url, sesspool)));
    }




  err = svn_ra_get_location_segments(ra_session, "", at_loc->rev, at_loc->rev,
                                     SVN_INVALID_REVNUM,
                                     copyfrom_info_receiver, &copyfrom_info,
                                     scratch_pool);

  if (old_session_url)
    err = svn_error_compose_create(
                    err,
                    svn_ra_reparent(ra_session, old_session_url, sesspool));

  svn_pool_destroy(sesspool);

  if (err)
    {
      if (err->apr_err == SVN_ERR_FS_NOT_FOUND ||
          err->apr_err == SVN_ERR_RA_DAV_REQUEST_FAILED)
        {


            svn_error_clear(err);
            err = SVN_NO_ERROR;

            *original_repos_relpath = ((void*)0);
            *original_revision = SVN_INVALID_REVNUM;
        }
      return svn_error_trace(err);
    }

  *original_repos_relpath = copyfrom_info.path;
  *original_revision = copyfrom_info.rev;
  return SVN_NO_ERROR;
}
