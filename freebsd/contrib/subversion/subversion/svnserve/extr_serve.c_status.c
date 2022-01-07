
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_boolean_t ;
struct TYPE_9__ {TYPE_2__* repository; } ;
typedef TYPE_3__ server_baton_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {TYPE_1__* fs_path; int fs; } ;
struct TYPE_7__ {int data; } ;


 int FALSE ;
 int SVN_CMD_ERR (int ) ;
 int SVN_DEPTH_INFINITY_OR_EMPTY (int ) ;
 int SVN_ERR (int ) ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * accept_report (int *,int *,int *,int *,TYPE_3__*,int ,char const*,int *,int ,int ,int ,int ) ;
 int log_command (TYPE_3__*,int *,int *,char*,int ) ;
 int svn_depth_from_word (char const*) ;
 int svn_depth_unknown ;
 int svn_fs_youngest_rev (int *,int ,int *) ;
 char* svn_fspath__join (int ,char const*,int *) ;
 int svn_log__status (char const*,int ,int ,int *) ;
 int svn_ra_svn__parse_tuple (int *,char*,char const**,int *,int *,char const**) ;
 char* svn_relpath_canonicalize (char const*,int *) ;
 int trivial_auth_request (int *,int *,TYPE_3__*) ;

__attribute__((used)) static svn_error_t *
status(svn_ra_svn_conn_t *conn,
       apr_pool_t *pool,
       svn_ra_svn__list_t *params,
       void *baton)
{
  server_baton_t *b = baton;
  svn_revnum_t rev;
  const char *target, *depth_word;
  svn_boolean_t recurse;


  svn_depth_t depth = svn_depth_unknown;


  SVN_ERR(svn_ra_svn__parse_tuple(params, "cb?(?r)?w",
                                  &target, &recurse, &rev, &depth_word));
  target = svn_relpath_canonicalize(target, pool);

  if (depth_word)
    depth = svn_depth_from_word(depth_word);
  else
    depth = SVN_DEPTH_INFINITY_OR_EMPTY(recurse);

  SVN_ERR(trivial_auth_request(conn, pool, b));
  if (!SVN_IS_VALID_REVNUM(rev))
    SVN_CMD_ERR(svn_fs_youngest_rev(&rev, b->repository->fs, pool));

  {
    const char *full_path = svn_fspath__join(b->repository->fs_path->data,
                                             target, pool);
    SVN_ERR(log_command(b, conn, pool, "%s",
                        svn_log__status(full_path, rev, depth, pool)));
  }

  return accept_report(((void*)0), ((void*)0), conn, pool, b, rev, target, ((void*)0), FALSE,
                       depth, FALSE, FALSE);
}
