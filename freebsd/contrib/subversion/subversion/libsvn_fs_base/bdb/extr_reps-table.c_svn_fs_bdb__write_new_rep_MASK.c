#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  db_txn; } ;
typedef  TYPE_1__ trail_t ;
struct TYPE_19__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  representation_t ;
struct TYPE_20__ {TYPE_13__* representations; } ;
typedef  TYPE_3__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_21__ {int /*<<< orphan*/  data; int /*<<< orphan*/  size; } ;
struct TYPE_17__ {int (* get ) (TYPE_13__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int (* put ) (TYPE_13__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_4__ DBT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int MAX_KEY_SIZE ; 
 char* NEXT_KEY_KEY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_13__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_13__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_2__*,char const*,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(const char **key,
                          svn_fs_t *fs,
                          const representation_t *rep,
                          trail_t *trail,
                          apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT query, result;
  int db_err;
  apr_size_t len;
  char next_key[MAX_KEY_SIZE];

  /* ### todo: see issue #409 for why bumping the key as part of this
     trail is problematic. */

  /* Get the current value associated with `next-key'.  */
  FUNC8(&query, NEXT_KEY_KEY);
  FUNC10(trail, "representations", "get");
  FUNC2(FUNC0(fs, FUNC1("allocating new representation (getting next-key)"),
                   bfd->representations->get
                   (bfd->representations, trail->db_txn, &query,
                    FUNC7(&result), 0)));

  FUNC9(&result, pool);

  /* Store the new rep. */
  *key = FUNC3(pool, result.data, result.size);
  FUNC2(FUNC11(fs, *key, rep, trail, pool));

  /* Bump to future key. */
  len = result.size;
  FUNC6(result.data, &len, next_key);
  FUNC10(trail, "representations", "put");
  db_err = bfd->representations->put
    (bfd->representations, trail->db_txn,
     FUNC8(&query, NEXT_KEY_KEY),
     FUNC8(&result, next_key),
     0);

  return FUNC0(fs, FUNC1("bumping next representation key"), db_err);
}