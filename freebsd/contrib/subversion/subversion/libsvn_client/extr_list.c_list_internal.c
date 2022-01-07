
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int svn_ra_session_t ;
typedef int svn_opt_revision_t ;
typedef int svn_membuf_t ;
struct TYPE_22__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct TYPE_23__ {scalar_t__ kind; } ;
typedef TYPE_2__ svn_dirent_t ;
typedef int svn_depth_t ;
typedef int (* svn_client_list_func2_t ) (void*,char*,TYPE_2__*,int *,char const*,char const*,char const*,int *) ;
typedef int svn_client_ctx_t ;
struct TYPE_24__ {int rev; int url; } ;
typedef TYPE_4__ svn_client__pathrev_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_25__ {char const* fs_base_path; int * locks; int (* list_func ) (void*,char*,TYPE_2__*,int *,char const*,char const*,char const*,int *) ;int * ctx; void* list_baton; } ;
typedef TYPE_5__ receiver_baton_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_DIRENT_KIND ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_FOUND ;
 scalar_t__ SVN_ERR_RA_NOT_IMPLEMENTED ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 TYPE_1__* SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_make (int *) ;
 int get_dir_contents (int ,char*,int ,int *,int *,char const*,int const*,int ,int *,int *,char const*,char const*,int (*) (void*,char*,TYPE_2__*,int *,char const*,char const*,char const*,int *),void*,int *,int *,int *) ;
 int list_externals (int *,int const*,int ,int ,scalar_t__,int (*) (void*,char*,TYPE_2__*,int *,char const*,char const*,char const*,int *),void*,int *,int *) ;
 int list_receiver ;
 scalar_t__ match_patterns (int ,int const*,int *) ;
 char* svn_client__pathrev_fspath (TYPE_4__*,int *) ;
 int svn_client__ra_session_from_path2 (int **,TYPE_4__**,char const*,int *,int const*,int const*,int *,int *) ;
 int svn_depth_files ;
 int svn_depth_immediates ;
 int svn_depth_infinity ;
 int svn_dirent_dirname (char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_createf (int ,int *,int ,int ,int ) ;
 scalar_t__ svn_error_find_cause (TYPE_1__*,int ) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int * svn_hash_gets (int *,char const*) ;
 int svn_membuf__create (int *,int,int *) ;
 scalar_t__ svn_node_dir ;
 TYPE_1__* svn_ra_get_locks2 (int *,int **,char*,int ,int *) ;
 TYPE_1__* svn_ra_list (int *,char*,int ,int const*,int ,int ,int ,TYPE_5__*,int *) ;
 int svn_ra_stat (int *,char*,int ,TYPE_2__**,int *) ;

__attribute__((used)) static svn_error_t *
list_internal(const char *path_or_url,
              const svn_opt_revision_t *peg_revision,
              const svn_opt_revision_t *revision,
              const apr_array_header_t *patterns,
              svn_depth_t depth,
              apr_uint32_t dirent_fields,
              svn_boolean_t fetch_locks,
              svn_boolean_t include_externals,
              const char *external_parent_url,
              const char *external_target,
              svn_client_list_func2_t list_func,
              void *baton,
              svn_client_ctx_t *ctx,
              apr_pool_t *pool)
{
  svn_ra_session_t *ra_session;
  svn_client__pathrev_t *loc;
  svn_dirent_t *dirent;
  const char *fs_path;
  svn_error_t *err;
  apr_hash_t *locks;
  apr_hash_t *externals;
  svn_membuf_t scratch_buffer;

  if (include_externals)
    externals = apr_hash_make(pool);
  else
    externals = ((void*)0);



  dirent_fields |= SVN_DIRENT_KIND;


  SVN_ERR(svn_client__ra_session_from_path2(&ra_session, &loc,
                                            path_or_url, ((void*)0),
                                            peg_revision,
                                            revision, ctx, pool));

  fs_path = svn_client__pathrev_fspath(loc, pool);


  if (fetch_locks)
    {


      err = svn_ra_get_locks2(ra_session, &locks, "", depth, pool);

      if (err && err->apr_err == SVN_ERR_RA_NOT_IMPLEMENTED)
        {
          svn_error_clear(err);
          locks = ((void*)0);
        }
      else if (err)
        return svn_error_trace(err);
    }
  else
    locks = ((void*)0);


  if (!include_externals)
    {
      receiver_baton_t receiver_baton;
      receiver_baton.list_baton = baton;
      receiver_baton.ctx = ctx;
      receiver_baton.list_func = list_func;
      receiver_baton.locks = locks;
      receiver_baton.fs_base_path = fs_path;

      err = svn_ra_list(ra_session, "", loc->rev, patterns, depth,
                        dirent_fields, list_receiver, &receiver_baton, pool);

      if (svn_error_find_cause(err, SVN_ERR_UNSUPPORTED_FEATURE))
        svn_error_clear(err);
      else
        return svn_error_trace(err);
    }


  SVN_ERR(svn_ra_stat(ra_session, "", loc->rev, &dirent, pool));
  if (! dirent)
    return svn_error_createf(SVN_ERR_FS_NOT_FOUND, ((void*)0),
                             _("URL '%s' non-existent in revision %ld"),
                             loc->url, loc->rev);



  svn_membuf__create(&scratch_buffer, 256, pool);


  if (match_patterns(svn_dirent_dirname(fs_path, pool), patterns,
                     &scratch_buffer))
    SVN_ERR(list_func(baton, "", dirent, locks
                      ? (svn_hash_gets(locks, fs_path))
                      : ((void*)0), fs_path, external_parent_url,
                      external_target, pool));

  if (dirent->kind == svn_node_dir
      && (depth == svn_depth_files
          || depth == svn_depth_immediates
          || depth == svn_depth_infinity))
    SVN_ERR(get_dir_contents(dirent_fields, "", loc->rev, ra_session, locks,
                             fs_path, patterns, depth, ctx, externals,
                             external_parent_url, external_target, list_func,
                             baton, &scratch_buffer, pool, pool));




  if (include_externals && apr_hash_count(externals))
    {


      SVN_ERR(list_externals(externals, patterns, depth, dirent_fields,
                             fetch_locks, list_func, baton,
                             ctx, pool));
    }

  return SVN_NO_ERROR;
}
