#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_14__ {int /*<<< orphan*/ * fs; } ;
typedef  TYPE_2__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
struct TYPE_15__ {scalar_t__ revision; scalar_t__ number; } ;
typedef  TYPE_3__ svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char const**,scalar_t__*,int /*<<< orphan*/ *,TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,TYPE_3__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const**,TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__**,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC18 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC20(svn_revnum_t *revision,
                   svn_fs_root_t *root,
                   const char *path,
                   apr_pool_t *pool)
{
  svn_fs_t *fs = root->fs;
  const svn_fs_id_t *given_noderev_id, *cached_origin_id;
  const svn_fs_fs__id_part_t *node_id;

  path = FUNC3(path, pool);

  /* Check the cache first. */
  FUNC0(FUNC12(&given_noderev_id, root, path, pool));
  node_id = FUNC10(given_noderev_id);

  /* Is it a brand new uncommitted node or a new-style node ID?
   * (committed old-style nodes will have a 0 revision value;
   * rev 0, number 0 is rev 0 root node). Note that != 0 includes
   * SVN_INVALID_REVNUM for uncommitted nodes. */
  if (node_id->revision != 0 || node_id->number == 0)
    {
      *revision = node_id->revision;
      return SVN_NO_ERROR;
    }

  /* OK, it's an old-style ID?  Maybe it's cached. */
  FUNC0(FUNC8(&cached_origin_id,
                                     fs,
                                     node_id,
                                     pool));
  if (cached_origin_id != NULL)
    {
      *revision = FUNC11(cached_origin_id);
      return SVN_NO_ERROR;
    }

  {
    /* Ah well, the answer isn't in the ID itself or in the cache.
       Let's actually calculate it, then. */
    svn_fs_root_t *curroot = root;
    apr_pool_t *subpool = FUNC16(pool);
    apr_pool_t *predidpool = FUNC16(pool);
    svn_stringbuf_t *lastpath = FUNC18(path, pool);
    svn_revnum_t lastrev = SVN_INVALID_REVNUM;
    dag_node_t *node;
    const svn_fs_id_t *pred_id;

    /* Walk the closest-copy chain back to the first copy in our history.

       NOTE: We merely *assume* that this is faster than walking the
       predecessor chain, because we *assume* that copies of parent
       directories happen less often than modifications to a given item. */
    while (1)
      {
        svn_revnum_t currev;
        const char *curpath = lastpath->data;

        FUNC15(subpool);

        /* Get a root pointing to LASTREV.  (The first time around,
           LASTREV is invalid, but that's cool because CURROOT is
           already initialized.)  */
        if (FUNC1(lastrev))
          FUNC0(FUNC13(&curroot, fs, lastrev, subpool));

        /* Find the previous location using the closest-copy shortcut. */
        FUNC0(FUNC2(&curpath, &currev, fs, curroot, curpath,
                              subpool));
        if (! curpath)
          break;

        /* Update our LASTPATH and LASTREV variables (which survive
           SUBPOOL). */
        FUNC19(lastpath, curpath);
        lastrev = currev;
      }

    /* Walk the predecessor links back to origin. */
    FUNC0(FUNC12(&pred_id, curroot, lastpath->data, predidpool));
    do
      {
        FUNC15(subpool);
        FUNC0(FUNC5(&node, fs, pred_id, subpool));

        /* Why not just fetch the predecessor ID in PREDIDPOOL?
           Because svn_fs_fs__dag_get_predecessor_id() doesn't
           necessarily honor the passed-in pool, and might return a
           value cached in the node (which is allocated in
           SUBPOOL... maybe). */
        FUNC15(predidpool);
        FUNC0(FUNC6(&pred_id, node));
        pred_id = pred_id ? FUNC9(pred_id, predidpool) : NULL;
      }
    while (pred_id);

    /* When we get here, NODE should be the first node-revision in our
       chain. */
    FUNC0(FUNC7(revision, node, pool));

    /* Wow, I don't want to have to do all that again.  Let's cache
       the result. */
    if (node_id->revision != SVN_INVALID_REVNUM)
      FUNC0(FUNC14(fs, node_id,
                                         FUNC4(node), pool));

    FUNC17(subpool);
    FUNC17(predidpool);
    return SVN_NO_ERROR;
  }
}