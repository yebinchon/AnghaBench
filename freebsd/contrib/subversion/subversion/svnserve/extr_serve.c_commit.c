
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
struct TYPE_23__ {int nelts; } ;
typedef TYPE_4__ svn_ra_svn__list_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_boolean_t ;
struct TYPE_24__ {TYPE_3__* repository; TYPE_2__* client_info; } ;
typedef TYPE_5__ server_baton_t ;
struct TYPE_25__ {char const** date; char const** author; char const** post_commit_err; int * new_rev; int * pool; } ;
typedef TYPE_6__ commit_callback_baton_t ;
struct TYPE_26__ {int * conn; TYPE_5__* server; } ;
typedef TYPE_7__ authz_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_22__ {int fs; TYPE_1__* fs_path; int repos_url; int repos; } ;
struct TYPE_21__ {char const* user; scalar_t__ tunnel; } ;
struct TYPE_20__ {int data; } ;


 int FALSE ;
 int SVN_CMD_ERR (int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_AUTHOR ;
 int SVN_PROP_REVISION_LOG ;
 int TRUE ;
 int add_lock_tokens (TYPE_4__*,TYPE_5__*,int *) ;
 int * apr_hash_make (int *) ;
 int authz_commit_cb ;
 int commit_done ;
 int log_command (TYPE_5__*,int *,int *,char*,int ) ;
 int must_have_access (int *,int *,TYPE_5__*,int ,int *,int) ;
 int svn_authz_write ;
 int svn_fs_deltify_revision (int ,int ,int *) ;
 int svn_hash_sets (int *,int ,int *) ;
 int svn_log__commit (int ,int *) ;
 int svn_path_uri_decode (int ,int *) ;
 int svn_ra_svn__parse_proplist (TYPE_4__*,int *,int **) ;
 int svn_ra_svn__parse_tuple (TYPE_4__*,char*,char const**,...) ;
 int svn_ra_svn__write_cmd_response (int *,int *,char*) ;
 int svn_ra_svn__write_tuple (int *,int *,char*,int ,char const*,char const*,char const*) ;
 int svn_ra_svn_drive_editor2 (int *,int *,int const*,void*,int *,int ) ;
 int svn_repos_get_commit_editor5 (int const**,void**,int ,int *,int ,int ,int *,int ,TYPE_6__*,int ,TYPE_7__*,int *) ;
 int * svn_string_create (char const*,int *) ;
 int trivial_auth_request (int *,int *,TYPE_5__*) ;
 int unlock_paths (TYPE_4__*,TYPE_5__*,int *) ;

__attribute__((used)) static svn_error_t *
commit(svn_ra_svn_conn_t *conn,
       apr_pool_t *pool,
       svn_ra_svn__list_t *params,
       void *baton)
{
  server_baton_t *b = baton;
  const char *log_msg,
             *date = ((void*)0),
             *author = ((void*)0),
             *post_commit_err = ((void*)0);
  svn_ra_svn__list_t *lock_tokens;
  svn_boolean_t keep_locks;
  svn_ra_svn__list_t *revprop_list;
  apr_hash_t *revprop_table;
  const svn_delta_editor_t *editor;
  void *edit_baton;
  svn_boolean_t aborted;
  commit_callback_baton_t ccb;
  svn_revnum_t new_rev;
  authz_baton_t ab;

  ab.server = b;
  ab.conn = conn;

  if (params->nelts == 1)
    {


      SVN_ERR(svn_ra_svn__parse_tuple(params, "c", &log_msg));
      lock_tokens = ((void*)0);
      keep_locks = TRUE;
      revprop_list = ((void*)0);
    }
  else
    {

      SVN_ERR(svn_ra_svn__parse_tuple(params, "clb?l", &log_msg,
                                      &lock_tokens, &keep_locks,
                                      &revprop_list));
    }






  SVN_ERR(must_have_access(conn, pool, b, svn_authz_write,
                           ((void*)0),
                           (lock_tokens && lock_tokens->nelts)));



  if (lock_tokens && lock_tokens->nelts)
    SVN_CMD_ERR(add_lock_tokens(lock_tokens, b, pool));


  if (revprop_list)
    SVN_ERR(svn_ra_svn__parse_proplist(revprop_list, pool, &revprop_table));
  else
    {
      revprop_table = apr_hash_make(pool);
      svn_hash_sets(revprop_table, SVN_PROP_REVISION_LOG,
                    svn_string_create(log_msg, pool));
    }



  svn_hash_sets(revprop_table, SVN_PROP_REVISION_AUTHOR,
                b->client_info->user
                   ? svn_string_create(b->client_info->user, pool)
                   : ((void*)0));

  ccb.pool = pool;
  ccb.new_rev = &new_rev;
  ccb.date = &date;
  ccb.author = &author;
  ccb.post_commit_err = &post_commit_err;

  SVN_CMD_ERR(svn_repos_get_commit_editor5
              (&editor, &edit_baton, b->repository->repos, ((void*)0),
               svn_path_uri_decode(b->repository->repos_url, pool),
               b->repository->fs_path->data, revprop_table,
               commit_done, &ccb,
               authz_commit_cb, &ab, pool));
  SVN_ERR(svn_ra_svn__write_cmd_response(conn, pool, ""));
  SVN_ERR(svn_ra_svn_drive_editor2(conn, pool, editor, edit_baton,
                                   &aborted, FALSE));
  if (!aborted)
    {
      SVN_ERR(log_command(b, conn, pool, "%s",
                          svn_log__commit(new_rev, pool)));
      SVN_ERR(trivial_auth_request(conn, pool, b));






      if (b->client_info->tunnel)
        SVN_ERR(svn_fs_deltify_revision(b->repository->fs, new_rev, pool));


      if (! keep_locks && lock_tokens && lock_tokens->nelts)
        SVN_ERR(unlock_paths(lock_tokens, b, pool));

      SVN_ERR(svn_ra_svn__write_tuple(conn, pool, "r(?c)(?c)(?c)",
                                      new_rev, date, author, post_commit_err));

      if (! b->client_info->tunnel)
        SVN_ERR(svn_fs_deltify_revision(b->repository->fs, new_rev, pool));
    }
  return SVN_NO_ERROR;
}
