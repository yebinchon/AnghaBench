#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  db_txn; } ;
typedef  TYPE_1__ trail_t ;
struct TYPE_11__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_12__ {TYPE_7__* miscellaneous; } ;
typedef  TYPE_3__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_13__ {int /*<<< orphan*/  (* put ) (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* del ) (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  DBT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char*) ; 

svn_error_t *
FUNC6(svn_fs_t *fs,
                              const char *key_str,
                              const char *val,
                              trail_t *trail,
                              apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT key, value;

  FUNC4(&key, key_str);
  if (val == NULL)
    {
      FUNC5(trail, "miscellaneous", "del");
      return FUNC0(fs, FUNC1("deleting record from 'miscellaneous' table"),
                      bfd->miscellaneous->del(bfd->miscellaneous,
                                              trail->db_txn, &key, 0));
    }
  else
    {
      FUNC4(&value, val);
      FUNC5(trail, "miscellaneous", "add");
      return FUNC0(fs, FUNC1("storing miscellaneous record"),
                      bfd->miscellaneous->put(bfd->miscellaneous,
                                              trail->db_txn,
                                              &key, &value, 0));
    }
}