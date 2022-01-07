
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int revision; } ;
typedef TYPE_1__ svn_commit_info_t ;
struct deltify_etc_baton {int fs; int repos; int fspath_base; scalar_t__ lock_tokens; int commit_baton; int * (* commit_cb ) (TYPE_1__ const*,int ,int *) ;} ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,scalar_t__) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 void* apr_hash_this_key (int *) ;
 char* apr_hash_this_val (int *) ;
 int * stub1 (TYPE_1__ const*,int ,int *) ;
 int svn_error_clear (int ) ;
 int * svn_error_compose_create (int *,int *) ;
 int * svn_fs_deltify_revision (int ,int ,int *) ;
 char* svn_fspath__join (int ,void const*,int *) ;
 int svn_hash_sets (int *,char const*,char const*) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_repos_fs_unlock_many (int ,int *,int ,int *,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
deltify_etc(const svn_commit_info_t *commit_info,
            void *baton,
            apr_pool_t *scratch_pool)
{
  struct deltify_etc_baton *deb = baton;
  svn_error_t *err1 = SVN_NO_ERROR;
  svn_error_t *err2;




  if (deb->commit_cb)
    err1 = deb->commit_cb(commit_info, deb->commit_baton, scratch_pool);


  if (deb->lock_tokens)
    {
      apr_pool_t *subpool = svn_pool_create(scratch_pool);
      apr_hash_t *targets = apr_hash_make(subpool);
      apr_hash_index_t *hi;

      for (hi = apr_hash_first(subpool, deb->lock_tokens); hi;
           hi = apr_hash_next(hi))
        {
          const void *relpath = apr_hash_this_key(hi);
          const char *token = apr_hash_this_val(hi);
          const char *fspath;

          fspath = svn_fspath__join(deb->fspath_base, relpath, subpool);
          svn_hash_sets(targets, fspath, token);
        }




      svn_error_clear(svn_repos_fs_unlock_many(deb->repos, targets, FALSE,
                                               ((void*)0), ((void*)0),
                                               subpool, subpool));

      svn_pool_destroy(subpool);
    }




  err2 = svn_fs_deltify_revision(deb->fs, commit_info->revision, scratch_pool);

  return svn_error_compose_create(err1, err2);
}
