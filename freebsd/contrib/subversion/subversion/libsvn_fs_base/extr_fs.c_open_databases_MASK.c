#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  path; TYPE_3__* fsap_data; int /*<<< orphan*/ * vtable; } ;
typedef  TYPE_1__ svn_fs_t ;
struct TYPE_17__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_18__ {TYPE_5__* bdb; int /*<<< orphan*/  checksum_reps; int /*<<< orphan*/  miscellaneous; int /*<<< orphan*/  node_origins; int /*<<< orphan*/  lock_tokens; int /*<<< orphan*/  locks; int /*<<< orphan*/  uuids; int /*<<< orphan*/  strings; int /*<<< orphan*/  representations; int /*<<< orphan*/  changes; int /*<<< orphan*/  copies; int /*<<< orphan*/  transactions; int /*<<< orphan*/  revisions; int /*<<< orphan*/  nodes; } ;
typedef  TYPE_3__ base_fs_data_t ;
struct TYPE_19__ {int /*<<< orphan*/  env; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  SVN_BDB_STANDARD_ENV_FLAGS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int SVN_FS_BASE__MIN_MISCELLANY_FORMAT ; 
 int SVN_FS_BASE__MIN_NODE_ORIGINS_FORMAT ; 
 int SVN_FS_BASE__MIN_REP_SHARING_FORMAT ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  apr_pool_cleanup_null ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  cleanup_fs_apr ; 
 int /*<<< orphan*/  fs_vtable ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (TYPE_5__**,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC24(svn_fs_t *fs,
               svn_boolean_t create,
               int format,
               const char *path)
{
  base_fs_data_t *bfd;

  FUNC2(FUNC9(fs, FALSE));

  bfd = FUNC4(fs->pool, sizeof(*bfd));
  fs->vtable = &fs_vtable;
  fs->fsap_data = bfd;

  /* Initialize the fs's path. */
  fs->path = FUNC6(fs->pool, path);

  if (create)
    FUNC2(FUNC7(fs));

  /* Create the Berkeley DB environment.  */
  {
    svn_error_t *err = FUNC10(&(bfd->bdb), path,
                                        SVN_BDB_STANDARD_ENV_FLAGS,
                                        0666, fs->pool);
    if (err)
      {
        if (create)
          return FUNC8
            (err->apr_err, err,
             FUNC3("Berkeley DB error for filesystem '%s'"
               " while creating environment:\n"),
             fs->path);
        else
          return FUNC8
            (err->apr_err, err,
             FUNC3("Berkeley DB error for filesystem '%s'"
               " while opening environment:\n"),
             fs->path);
      }
  }

  /* We must register the FS cleanup function *after* opening the
     environment, so that it's run before the environment baton
     cleanup. */
  FUNC5(fs->pool, fs, cleanup_fs_apr,
                            apr_pool_cleanup_null);


  /* Create the databases in the environment.  */
  FUNC2(FUNC0(fs, (create
                        ? FUNC1("creating 'nodes' table")
                        : FUNC1("opening 'nodes' table")),
                   FUNC18(&bfd->nodes,
                                                bfd->bdb->env,
                                                create)));
  FUNC2(FUNC0(fs, (create
                        ? FUNC1("creating 'revisions' table")
                        : FUNC1("opening 'revisions' table")),
                   FUNC20(&bfd->revisions,
                                                    bfd->bdb->env,
                                                    create)));
  FUNC2(FUNC0(fs, (create
                        ? FUNC1("creating 'transactions' table")
                        : FUNC1("opening 'transactions' table")),
                   FUNC22(&bfd->transactions,
                                                       bfd->bdb->env,
                                                       create)));
  FUNC2(FUNC0(fs, (create
                        ? FUNC1("creating 'copies' table")
                        : FUNC1("opening 'copies' table")),
                   FUNC13(&bfd->copies,
                                                 bfd->bdb->env,
                                                 create)));
  FUNC2(FUNC0(fs, (create
                        ? FUNC1("creating 'changes' table")
                        : FUNC1("opening 'changes' table")),
                   FUNC11(&bfd->changes,
                                                  bfd->bdb->env,
                                                  create)));
  FUNC2(FUNC0(fs, (create
                        ? FUNC1("creating 'representations' table")
                        : FUNC1("opening 'representations' table")),
                   FUNC19(&bfd->representations,
                                               bfd->bdb->env,
                                               create)));
  FUNC2(FUNC0(fs, (create
                        ? FUNC1("creating 'strings' table")
                        : FUNC1("opening 'strings' table")),
                   FUNC21(&bfd->strings,
                                                  bfd->bdb->env,
                                                  create)));
  FUNC2(FUNC0(fs, (create
                        ? FUNC1("creating 'uuids' table")
                        : FUNC1("opening 'uuids' table")),
                   FUNC23(&bfd->uuids,
                                                bfd->bdb->env,
                                                create)));
  FUNC2(FUNC0(fs, (create
                        ? FUNC1("creating 'locks' table")
                        : FUNC1("opening 'locks' table")),
                   FUNC15(&bfd->locks,
                                                bfd->bdb->env,
                                                create)));
  FUNC2(FUNC0(fs, (create
                        ? FUNC1("creating 'lock-tokens' table")
                        : FUNC1("opening 'lock-tokens' table")),
                   FUNC14(&bfd->lock_tokens,
                                                      bfd->bdb->env,
                                                      create)));

  if (format >= SVN_FS_BASE__MIN_NODE_ORIGINS_FORMAT)
    {
      FUNC2(FUNC0(fs, (create
                            ? FUNC1("creating 'node-origins' table")
                            : FUNC1("opening 'node-origins' table")),
                       FUNC17(&bfd->node_origins,
                                                           bfd->bdb->env,
                                                           create)));
    }

  if (format >= SVN_FS_BASE__MIN_MISCELLANY_FORMAT)
    {
      FUNC2(FUNC0(fs, (create
                            ? FUNC1("creating 'miscellaneous' table")
                            : FUNC1("opening 'miscellaneous' table")),
                       FUNC16(&bfd->miscellaneous,
                                                            bfd->bdb->env,
                                                            create)));
    }

  if (format >= SVN_FS_BASE__MIN_REP_SHARING_FORMAT)
    {
      FUNC2(FUNC0(fs, (create
                            ? FUNC1("creating 'checksum-reps' table")
                            : FUNC1("opening 'checksum-reps' table")),
                       FUNC12(&bfd->checksum_reps,
                                                            bfd->bdb->env,
                                                            create)));
    }

  return SVN_NO_ERROR;
}