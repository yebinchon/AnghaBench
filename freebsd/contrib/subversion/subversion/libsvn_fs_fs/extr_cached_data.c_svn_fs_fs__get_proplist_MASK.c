#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_16__ {TYPE_6__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_17__ {int /*<<< orphan*/  revision; int /*<<< orphan*/  item_index; int /*<<< orphan*/  txn_id; } ;
typedef  TYPE_3__ representation_t ;
struct TYPE_18__ {int /*<<< orphan*/  second; int /*<<< orphan*/  revision; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ pair_cache_key_t ;
struct TYPE_19__ {int /*<<< orphan*/  id; TYPE_3__* prop_rep; } ;
typedef  TYPE_5__ node_revision_t ;
struct TYPE_20__ {scalar_t__ properties_cache; } ;
typedef  TYPE_6__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_HASH_TERMINATOR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void**,scalar_t__*,scalar_t__,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC15(apr_hash_t **proplist_p,
                        svn_fs_t *fs,
                        node_revision_t *noderev,
                        apr_pool_t *pool)
{
  apr_hash_t *proplist;
  svn_stream_t *stream;

  if (noderev->prop_rep && FUNC9(&noderev->prop_rep->txn_id))
    {
      svn_error_t *err;
      const char *filename
        = FUNC11(fs, noderev->id, pool);
      proplist = FUNC3(pool);

      FUNC0(FUNC14(&stream, filename, pool, pool));
      err = FUNC12(proplist, stream, SVN_HASH_TERMINATOR, pool);
      if (err)
        {
          svn_string_t *id_str = FUNC10(noderev->id, pool);

          err = FUNC6(err, FUNC13(stream));
          return FUNC7(err,
                   FUNC2("malformed property list for node-revision '%s' in '%s'"),
                   id_str->data, filename);
        }
      FUNC0(FUNC13(stream));
    }
  else if (noderev->prop_rep)
    {
      svn_error_t *err;
      fs_fs_data_t *ffd = fs->fsap_data;
      representation_t *rep = noderev->prop_rep;
      pair_cache_key_t key = { 0 };

      key.revision = rep->revision;
      key.second = rep->item_index;
      if (ffd->properties_cache && FUNC1(rep->revision))
        {
          svn_boolean_t is_cached;
          FUNC0(FUNC4((void **) proplist_p, &is_cached,
                                 ffd->properties_cache, &key, pool));
          if (is_cached)
            return SVN_NO_ERROR;
        }

      proplist = FUNC3(pool);
      FUNC0(FUNC8(&stream, fs, noderev->prop_rep, FALSE,
                                      pool));
      err = FUNC12(proplist, stream, SVN_HASH_TERMINATOR, pool);
      if (err)
        {
          svn_string_t *id_str = FUNC10(noderev->id, pool);

          err = FUNC6(err, FUNC13(stream));
          return FUNC7(err,
                   FUNC2("malformed property list for node-revision '%s'"),
                   id_str->data);
        }
      FUNC0(FUNC13(stream));

      if (ffd->properties_cache && FUNC1(rep->revision))
        FUNC0(FUNC5(ffd->properties_cache, &key, proplist, pool));
    }
  else
    {
      /* return an empty prop list if the node doesn't have any props */
      proplist = FUNC3(pool);
    }

  *proplist_p = proplist;

  return SVN_NO_ERROR;
}