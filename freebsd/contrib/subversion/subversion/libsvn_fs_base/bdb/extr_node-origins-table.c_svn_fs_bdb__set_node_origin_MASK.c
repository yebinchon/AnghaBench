#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_17__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  db_txn; } ;
typedef  TYPE_1__ trail_t ;
struct TYPE_25__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_string_t ;
struct TYPE_26__ {int /*<<< orphan*/  path; TYPE_4__* fsap_data; } ;
typedef  TYPE_3__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_27__ {TYPE_17__* node_origins; } ;
typedef  TYPE_4__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_28__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_23__ {int (* get ) (TYPE_17__*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* put ) (TYPE_17__*,int /*<<< orphan*/ ,TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_5__ DBT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DB_NOTFOUND ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (TYPE_17__*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_17__*,int /*<<< orphan*/ ,TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__ const*,TYPE_2__ const*) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *FUNC14(svn_fs_t *fs,
                                         const char *node_id,
                                         const svn_fs_id_t *origin_id,
                                         trail_t *trail,
                                         apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT key, value;
  int db_err;

  /* Create a key from our NODE_ID. */
  FUNC9(&key, node_id);

  /* Check to see if we already have a mapping for NODE_ID.  If so,
     and the value is the same one we were about to write.  That's
     cool -- just do nothing.  If, however, the value is *different*,
     that's a red flag!  */
  FUNC11(trail, "node-origins", "get");
  db_err = bfd->node_origins->get(bfd->node_origins, trail->db_txn,
                                  &key, FUNC8(&value), 0);
  FUNC10(&value, pool);
  if (db_err != DB_NOTFOUND)
    {
      const svn_string_t *origin_id_str =
        FUNC7(origin_id, pool);
      const svn_string_t *old_origin_id_str =
        FUNC13(value.data, value.size, pool);

      if (! FUNC12(origin_id_str, old_origin_id_str))
        return FUNC5
          (SVN_ERR_FS_CORRUPT, NULL,
           FUNC2("Node origin for '%s' exists in filesystem '%s' with a different "
             "value (%s) than what we were about to store (%s)"),
           node_id, fs->path, old_origin_id_str->data, origin_id_str->data);
      else
        return SVN_NO_ERROR;
    }

  /* Create a value from our ORIGIN_ID, and add this record to the table. */
  FUNC6(&value, origin_id, pool);
  FUNC11(trail, "node-origins", "put");
  return FUNC0(fs, FUNC1("storing node-origins record"),
                  bfd->node_origins->put(bfd->node_origins, trail->db_txn,
                                         &key, &value, 0));
}