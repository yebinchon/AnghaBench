#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {int /*<<< orphan*/  revision; } ;
typedef  TYPE_1__ svn_commit_info_t ;
struct deltify_etc_baton {int /*<<< orphan*/  fs; int /*<<< orphan*/  repos; int /*<<< orphan*/  fspath_base; scalar_t__ lock_tokens; int /*<<< orphan*/  commit_baton; int /*<<< orphan*/ * (* commit_cb ) (TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC14(const svn_commit_info_t *commit_info,
            void *baton,
            apr_pool_t *scratch_pool)
{
  struct deltify_etc_baton *deb = baton;
  svn_error_t *err1 = SVN_NO_ERROR;
  svn_error_t *err2;

  /* Invoke the original callback first, in case someone's waiting to
     know the revision number so they can go off and annotate an
     issue or something. */
  if (deb->commit_cb)
    err1 = deb->commit_cb(commit_info, deb->commit_baton, scratch_pool);

  /* Maybe unlock the paths. */
  if (deb->lock_tokens)
    {
      apr_pool_t *subpool = FUNC11(scratch_pool);
      apr_hash_t *targets = FUNC1(subpool);
      apr_hash_index_t *hi;

      for (hi = FUNC0(subpool, deb->lock_tokens); hi;
           hi = FUNC2(hi))
        {
          const void *relpath = FUNC3(hi);
          const char *token = FUNC4(hi);
          const char *fspath;

          fspath = FUNC9(deb->fspath_base, relpath, subpool);
          FUNC10(targets, fspath, token);
        }

      /* We may get errors here if the lock was broken or stolen
         after the commit succeeded.  This is fine and should be
         ignored. */
      FUNC6(FUNC13(deb->repos, targets, FALSE,
                                               NULL, NULL,
                                               subpool, subpool));

      FUNC12(subpool);
    }

  /* But, deltification shouldn't be stopped just because someone's
     random callback failed, so proceed unconditionally on to
     deltification. */
  err2 = FUNC8(deb->fs, commit_info->revision, scratch_pool);

  return FUNC7(err1, err2);
}