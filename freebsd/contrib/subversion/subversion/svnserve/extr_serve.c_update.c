
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ svn_tristate_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_9__ {TYPE_2__* repository; } ;
typedef TYPE_3__ server_baton_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {int fs; TYPE_1__* fs_path; } ;
struct TYPE_7__ {int data; } ;


 int FALSE ;
 int SVN_CMD_ERR (int ) ;
 int SVN_DEPTH_INFINITY_OR_FILES (scalar_t__) ;
 int SVN_ERR (int ) ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int accept_report (scalar_t__*,int *,int *,int *,TYPE_3__*,int ,char const*,int *,int ,int ,int,int) ;
 int log_command (TYPE_3__*,int *,int *,char*,int ) ;
 int must_have_access (int *,int *,TYPE_3__*,int ,char const*,int ) ;
 int svn_authz_read ;
 int svn_depth_from_word (char const*) ;
 int svn_depth_unknown ;
 int svn_fs_youngest_rev (int *,int ,int *) ;
 char* svn_fspath__join (int ,char const*,int *) ;
 int svn_log__checkout (char const*,int ,int ,int *) ;
 int svn_log__update (char const*,int ,int ,int,int *) ;
 int svn_ra_svn__parse_tuple (int *,char*,int *,char const**,scalar_t__*,char const**,scalar_t__*,scalar_t__*) ;
 char* svn_relpath_canonicalize (char const*,int *) ;
 scalar_t__ svn_tristate_true ;

__attribute__((used)) static svn_error_t *
update(svn_ra_svn_conn_t *conn,
       apr_pool_t *pool,
       svn_ra_svn__list_t *params,
       void *baton)
{
  server_baton_t *b = baton;
  svn_revnum_t rev;
  const char *target, *full_path, *depth_word;
  svn_boolean_t recurse;
  svn_tristate_t send_copyfrom_args;
  svn_tristate_t ignore_ancestry;


  svn_depth_t depth = svn_depth_unknown;
  svn_boolean_t is_checkout;


  SVN_ERR(svn_ra_svn__parse_tuple(params, "(?r)cb?w3?3", &rev, &target,
                                  &recurse, &depth_word,
                                  &send_copyfrom_args, &ignore_ancestry));
  target = svn_relpath_canonicalize(target, pool);

  if (depth_word)
    depth = svn_depth_from_word(depth_word);
  else
    depth = SVN_DEPTH_INFINITY_OR_FILES(recurse);

  full_path = svn_fspath__join(b->repository->fs_path->data, target, pool);

  SVN_ERR(must_have_access(conn, pool, b, svn_authz_read, full_path, FALSE));

  if (!SVN_IS_VALID_REVNUM(rev))
    SVN_CMD_ERR(svn_fs_youngest_rev(&rev, b->repository->fs, pool));

  SVN_ERR(accept_report(&is_checkout, ((void*)0),
                        conn, pool, b, rev, target, ((void*)0), TRUE,
                        depth,
                        (send_copyfrom_args == svn_tristate_true),
                        (ignore_ancestry == svn_tristate_true)));
  if (is_checkout)
    {
      SVN_ERR(log_command(b, conn, pool, "%s",
                          svn_log__checkout(full_path, rev,
                                            depth, pool)));
    }
  else
    {
      SVN_ERR(log_command(b, conn, pool, "%s",
                          svn_log__update(full_path, rev, depth,
                                          (send_copyfrom_args
                                           == svn_tristate_true),
                                          pool)));
    }

  return SVN_NO_ERROR;
}
