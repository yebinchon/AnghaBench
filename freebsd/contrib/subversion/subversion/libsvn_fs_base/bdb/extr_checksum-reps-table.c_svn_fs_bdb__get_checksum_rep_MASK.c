#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_16__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  db_txn; } ;
typedef  TYPE_1__ trail_t ;
struct TYPE_19__ {TYPE_4__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_20__ {scalar_t__ kind; } ;
typedef  TYPE_3__ svn_checksum_t ;
struct TYPE_21__ {TYPE_16__* checksum_reps; } ;
typedef  TYPE_4__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_22__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_17__ {int (* get ) (TYPE_16__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_5__ DBT ;

/* Variables and functions */
 int DB_NOTFOUND ; 
 int /*<<< orphan*/  SVN_ERR_BAD_CHECKSUM_KIND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_16__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_checksum_sha1 ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,char*) ; 

svn_error_t *FUNC9(const char **rep_key,
                                          svn_fs_t *fs,
                                          svn_checksum_t *checksum,
                                          trail_t *trail,
                                          apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT key, value;
  int db_err;

  /* We only allow SHA1 checksums in this table. */
  if (checksum->kind != svn_checksum_sha1)
    return FUNC3(SVN_ERR_BAD_CHECKSUM_KIND, NULL,
                            FUNC0("Only SHA1 checksums can be used as keys in the "
                              "checksum-reps table.\n"));

  FUNC8(trail, "checksum-reps", "get");
  db_err = bfd->checksum_reps->get(bfd->checksum_reps, trail->db_txn,
                                   FUNC4(&key, checksum),
                                   FUNC6(&value), 0);
  FUNC7(&value, pool);

  if (db_err == DB_NOTFOUND)
    return FUNC5(fs, checksum);

  *rep_key = FUNC1(pool, value.data, value.size);
  return SVN_NO_ERROR;
}