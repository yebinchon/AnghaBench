#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  db_txn; } ;
typedef  TYPE_1__ trail_t ;
struct TYPE_16__ {int /*<<< orphan*/  path; TYPE_4__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_17__ {scalar_t__ kind; } ;
typedef  TYPE_3__ svn_checksum_t ;
struct TYPE_18__ {TYPE_11__* checksum_reps; } ;
typedef  TYPE_4__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_14__ {int (* get ) (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* put ) (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  DBT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DB_NOTFOUND ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_BAD_CHECKSUM_KIND ; 
 int /*<<< orphan*/  SVN_ERR_FS_ALREADY_EXISTS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_checksum_sha1 ; 
 char* FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*,char*) ; 

svn_error_t *FUNC14(svn_fs_t *fs,
                                          svn_checksum_t *checksum,
                                          const char *rep_key,
                                          trail_t *trail,
                                          apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT key, value;
  int db_err;

  /* We only allow SHA1 checksums in this table. */
  if (checksum->kind != svn_checksum_sha1)
    return FUNC7(SVN_ERR_BAD_CHECKSUM_KIND, NULL,
                            FUNC3("Only SHA1 checksums can be used as keys in the "
                              "checksum-reps table.\n"));

  /* Create a key from our CHECKSUM. */
  FUNC9(&key, checksum);

  /* Check to see if we already have a mapping for CHECKSUM.  If so,
     and the value is the same one we were about to write, that's
     cool -- just do nothing.  If, however, the value is *different*,
     that's a red flag!  */
  FUNC13(trail, "checksum-reps", "get");
  db_err = bfd->checksum_reps->get(bfd->checksum_reps, trail->db_txn,
                                   &key, FUNC10(&value), 0);
  FUNC12(&value, pool);
  if (db_err != DB_NOTFOUND)
    {
      const char *sum_str = FUNC6(checksum, pool);
      return FUNC8
        (SVN_ERR_FS_ALREADY_EXISTS, NULL,
         FUNC3("Representation key for checksum '%s' exists in filesystem '%s'."),
         sum_str, fs->path);
    }

  /* Create a value from our REP_KEY, and add this record to the table. */
  FUNC11(&value, rep_key);
  FUNC13(trail, "checksum-reps", "put");
  FUNC2(FUNC0(fs, FUNC1("storing checksum-reps record"),
                   bfd->checksum_reps->put(bfd->checksum_reps, trail->db_txn,
                                           &key, &value, 0)));
  return SVN_NO_ERROR;
}