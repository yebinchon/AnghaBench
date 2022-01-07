
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct ev2_baton {TYPE_1__* repos; int commit_baton; int commit_cb; int txn_name; int inner; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_3__ {int fs; int hooks_env_path; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_FS_CONFLICT ;
 int SVN_ERR_REPOS_POST_COMMIT_HOOK_FAILED ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int _ (char*) ;
 int invoke_commit_cb (int ,int ,int ,int ,char const*,int *) ;
 int svn_error_clear (int *) ;
 int * svn_error_compose_create (int *,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int * svn_error_trace (int ) ;
 int svn_fs__editor_commit (int *,int **,char const**,int ,int *,int *) ;
 int * svn_repos__hooks_post_commit (TYPE_1__*,int *,int ,int ,int *) ;
 int svn_repos__hooks_pre_commit (TYPE_1__*,int *,int ,int *) ;
 int svn_repos__parse_hooks_env (int **,int ,int *,int *) ;
 char* svn_repos__post_commit_error_str (int *,int *) ;

__attribute__((used)) static svn_error_t *
complete_cb(void *baton,
            apr_pool_t *scratch_pool)
{
  struct ev2_baton *eb = baton;
  svn_revnum_t revision;
  svn_error_t *post_commit_err;
  const char *conflict_path;
  svn_error_t *err;
  const char *post_commit_errstr;
  apr_hash_t *hooks_env;


  SVN_ERR(svn_repos__parse_hooks_env(&hooks_env, eb->repos->hooks_env_path,
                                     scratch_pool, scratch_pool));



  SVN_ERR(svn_repos__hooks_pre_commit(eb->repos, hooks_env,
                                      eb->txn_name, scratch_pool));


  SVN_ERR(svn_fs__editor_commit(&revision, &post_commit_err, &conflict_path,
                                eb->inner, scratch_pool, scratch_pool));


  if (conflict_path != ((void*)0))
    return svn_error_createf(SVN_ERR_FS_CONFLICT, ((void*)0),
                             _("Conflict at '%s'"), conflict_path);





  SVN_ERR_ASSERT(SVN_IS_VALID_REVNUM(revision));
  err = svn_repos__hooks_post_commit(eb->repos, hooks_env, revision,
                                     eb->txn_name, scratch_pool);
  if (err)
    err = svn_error_create(SVN_ERR_REPOS_POST_COMMIT_HOOK_FAILED, err,
                           _("Commit succeeded, but post-commit hook failed"));


  err = svn_error_compose_create(post_commit_err, err);
  if (err)
    {
      post_commit_errstr = svn_repos__post_commit_error_str(err, scratch_pool);
      svn_error_clear(err);
    }
  else
    {
      post_commit_errstr = ((void*)0);
    }

  return svn_error_trace(invoke_commit_cb(eb->commit_cb, eb->commit_baton,
                                          eb->repos->fs, revision,
                                          post_commit_errstr,
                                          scratch_pool));
}
