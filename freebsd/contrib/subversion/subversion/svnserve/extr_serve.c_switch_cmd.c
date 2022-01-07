
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
typedef int svn_boolean_t ;
struct TYPE_9__ {TYPE_2__* repository; } ;
typedef TYPE_3__ server_baton_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {char const* repos_url; TYPE_1__* fs_path; int fs; } ;
struct TYPE_7__ {int data; } ;


 int SVN_CMD_ERR (int ) ;
 int SVN_DEPTH_INFINITY_OR_FILES (int ) ;
 int SVN_ERR (int ) ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int TRUE ;
 int * accept_report (int *,int *,int *,int *,TYPE_3__*,int ,char const*,char const*,int ,int ,int,int) ;
 int get_fs_path (int ,int ,char const**) ;
 int log_command (TYPE_3__*,int *,int *,char*,int ) ;
 int svn_depth_from_word (char const*) ;
 int svn_depth_unknown ;
 int svn_fs_youngest_rev (int *,int ,int *) ;
 char* svn_fspath__join (int ,char const*,int *) ;
 int svn_log__switch (char const*,char const*,int ,int ,int *) ;
 int svn_path_uri_decode (char const*,int *) ;
 int svn_ra_svn__parse_tuple (int *,char*,int *,char const**,int *,char const**,char const**,scalar_t__*,scalar_t__*) ;
 char* svn_relpath_canonicalize (char const*,int *) ;
 scalar_t__ svn_tristate_false ;
 scalar_t__ svn_tristate_true ;
 char* svn_uri_canonicalize (char const*,int *) ;
 int trivial_auth_request (int *,int *,TYPE_3__*) ;

__attribute__((used)) static svn_error_t *
switch_cmd(svn_ra_svn_conn_t *conn,
           apr_pool_t *pool,
           svn_ra_svn__list_t *params,
           void *baton)
{
  server_baton_t *b = baton;
  svn_revnum_t rev;
  const char *target, *depth_word;
  const char *switch_url, *switch_path;
  svn_boolean_t recurse;


  svn_depth_t depth = svn_depth_unknown;
  svn_tristate_t send_copyfrom_args;
  svn_tristate_t ignore_ancestry;


  SVN_ERR(svn_ra_svn__parse_tuple(params, "(?r)cbc?w?33", &rev, &target,
                                  &recurse, &switch_url, &depth_word,
                                  &send_copyfrom_args, &ignore_ancestry));
  target = svn_relpath_canonicalize(target, pool);
  switch_url = svn_uri_canonicalize(switch_url, pool);

  if (depth_word)
    depth = svn_depth_from_word(depth_word);
  else
    depth = SVN_DEPTH_INFINITY_OR_FILES(recurse);

  SVN_ERR(trivial_auth_request(conn, pool, b));
  if (!SVN_IS_VALID_REVNUM(rev))
    SVN_CMD_ERR(svn_fs_youngest_rev(&rev, b->repository->fs, pool));

  SVN_CMD_ERR(get_fs_path(svn_path_uri_decode(b->repository->repos_url,
                                              pool),
                          svn_path_uri_decode(switch_url, pool),
                          &switch_path));

  {
    const char *full_path = svn_fspath__join(b->repository->fs_path->data,
                                             target, pool);
    SVN_ERR(log_command(b, conn, pool, "%s",
                        svn_log__switch(full_path, switch_path, rev,
                                        depth, pool)));
  }

  return accept_report(((void*)0), ((void*)0),
                       conn, pool, b, rev, target, switch_path, TRUE,
                       depth,
                       (send_copyfrom_args == svn_tristate_true),
                       (ignore_ancestry != svn_tristate_false));
}
