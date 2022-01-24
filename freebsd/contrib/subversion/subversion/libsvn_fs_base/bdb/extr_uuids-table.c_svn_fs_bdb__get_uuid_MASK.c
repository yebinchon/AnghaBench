#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  db_txn; } ;
typedef  TYPE_1__ trail_t ;
struct TYPE_15__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  idx ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_16__ {TYPE_5__* uuids; } ;
typedef  TYPE_3__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_18__ {int /*<<< orphan*/  (* get ) (TYPE_5__*,int /*<<< orphan*/ ,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_17__ {int* data; int size; int ulen; int /*<<< orphan*/  flags; } ;
typedef  TYPE_4__ DBT ;
typedef  TYPE_5__ DB ;

/* Variables and functions */
 int /*<<< orphan*/  APR_UUID_FORMATTED_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DB_DBT_USERMEM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,char*) ; 

svn_error_t *FUNC7(svn_fs_t *fs,
                                  int idx,
                                  const char **uuid,
                                  trail_t *trail,
                                  apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  char buffer[APR_UUID_FORMATTED_LENGTH + 1];
  DB *uuids = bfd->uuids;
  DBT key;
  DBT value;

  FUNC5(&key);
  key.data = &idx;
  key.size = sizeof(idx);

  FUNC5(&value);
  value.data = buffer;
  value.size = sizeof(buffer) - 1;
  value.ulen = value.size;
  value.flags |= DB_DBT_USERMEM;

  FUNC6(trail, "uuids", "get");
  FUNC2(FUNC0(fs, FUNC1("get repository uuid"),
                   uuids->get(uuids, trail->db_txn, &key, &value, 0)));

  *uuid = FUNC3(pool, value.data, value.size);

  return SVN_NO_ERROR;
}