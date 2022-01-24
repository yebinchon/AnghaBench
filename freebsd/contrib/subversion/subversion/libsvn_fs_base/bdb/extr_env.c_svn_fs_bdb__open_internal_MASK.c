#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_13__ {int flags; int refcount; int /*<<< orphan*/  env; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ bdb_env_t ;
typedef  int /*<<< orphan*/  bdb_env_key_t ;
struct TYPE_14__ {TYPE_4__* error_info; TYPE_1__* bdb; int /*<<< orphan*/  env; } ;
typedef  TYPE_2__ bdb_env_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_15__ {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int DB_PRIVATE ; 
 int /*<<< orphan*/  DB_RUNRECOVERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_BERKELEY_DB ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  apr_pool_cleanup_null ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bdb_cache ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bdb_cache_pool ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  cleanup_env_baton ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC15(bdb_env_baton_t **bdb_batonp,
                          const char *path,
                          u_int32_t flags, int mode,
                          apr_pool_t *pool)
{
  bdb_env_key_t key;
  bdb_env_t *bdb;
  svn_boolean_t panic;

  /* We can safely discard the open DB_CONFIG file handle.  If the
     environment descriptor is in the cache, the key's immutability is
     guaranteed.  If it's not, we don't care if the key changes,
     between here and the actual insertion of the newly-created
     environment into the cache, because no other thread can touch the
     cache in the meantime. */
  FUNC0(FUNC5(&key, NULL, path, pool));

  bdb = FUNC4(&key, &panic);
  if (panic)
    return FUNC12(SVN_ERR_FS_BERKELEY_DB, NULL,
                            FUNC9(DB_RUNRECOVERY));

  /* Make sure that the environment's open flags haven't changed. */
  if (bdb && bdb->flags != flags)
    {
      /* Handle changes to the DB_PRIVATE flag specially */
      if ((flags ^ bdb->flags) & DB_PRIVATE)
        {
          if (flags & DB_PRIVATE)
            return FUNC12(SVN_ERR_FS_BERKELEY_DB, NULL,
                                    "Reopening a public Berkeley DB"
                                    " environment with private attributes");
          else
            return FUNC12(SVN_ERR_FS_BERKELEY_DB, NULL,
                                    "Reopening a private Berkeley DB"
                                    " environment with public attributes");
        }

      /* Otherwise return a generic "flags-mismatch" error. */
      return FUNC12(SVN_ERR_FS_BERKELEY_DB, NULL,
                              "Reopening a Berkeley DB environment"
                              " with different attributes");
    }

  if (!bdb)
    {
      svn_error_t *err;

      FUNC0(FUNC8(&bdb, path, FUNC14(bdb_cache_pool)));
      err = FUNC7(bdb, flags, mode);
      if (err)
        {
          /* Clean up, and we can't do anything about returned errors. */
          FUNC11(FUNC6(bdb));
          return FUNC13(err);
        }

      FUNC1(bdb_cache, &bdb->key, sizeof bdb->key, bdb);
      bdb->flags = flags;
      bdb->refcount = 1;
    }
  else
    {
      ++bdb->refcount;
    }

  *bdb_batonp = FUNC2(pool, sizeof **bdb_batonp);
  (*bdb_batonp)->env = bdb->env;
  (*bdb_batonp)->bdb = bdb;
  (*bdb_batonp)->error_info = FUNC10(bdb);
  ++(*bdb_batonp)->error_info->refcount;
  FUNC3(pool, *bdb_batonp, cleanup_env_baton,
                            apr_pool_cleanup_null);

  return SVN_NO_ERROR;
}