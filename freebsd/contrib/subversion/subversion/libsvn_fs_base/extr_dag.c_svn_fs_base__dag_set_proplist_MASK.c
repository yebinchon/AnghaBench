#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_45__   TYPE_7__ ;
typedef  struct TYPE_44__   TYPE_6__ ;
typedef  struct TYPE_43__   TYPE_5__ ;
typedef  struct TYPE_42__   TYPE_4__ ;
typedef  struct TYPE_41__   TYPE_3__ ;
typedef  struct TYPE_40__   TYPE_2__ ;
typedef  struct TYPE_39__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trail_t ;
struct TYPE_39__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
struct TYPE_40__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
struct TYPE_41__ {TYPE_7__* fsap_data; } ;
typedef  TYPE_3__ svn_fs_t ;
struct TYPE_42__ {scalar_t__ apr_err; } ;
typedef  TYPE_4__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
struct TYPE_43__ {char* prop_key; } ;
typedef  TYPE_5__ node_revision_t ;
struct TYPE_44__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_6__ dag_node_t ;
struct TYPE_45__ {scalar_t__ format; } ;
typedef  TYPE_7__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_MUTABLE ; 
 scalar_t__ SVN_ERR_FS_NO_SUCH_CHECKSUM_REP ; 
 scalar_t__ SVN_FS_BASE__MIN_REP_SHARING_FORMAT ; 
 TYPE_4__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_sha1 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,char const*) ; 
 TYPE_3__* FUNC7 (TYPE_6__*) ; 
 TYPE_4__* FUNC8 (TYPE_3__*,char*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC9 (char const**,char const*,TYPE_3__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/ **,TYPE_3__*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char const*) ; 
 TYPE_4__* FUNC13 (char const**,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC14 (TYPE_5__**,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC15 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC18 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC20(dag_node_t *node,
                              const apr_hash_t *proplist,
                              const char *txn_id,
                              trail_t *trail,
                              apr_pool_t *pool)
{
  node_revision_t *noderev;
  const char *rep_key, *mutable_rep_key;
  svn_fs_t *fs = FUNC7(node);
  svn_stream_t *wstream;
  apr_size_t len;
  svn_skel_t *proplist_skel;
  svn_stringbuf_t *raw_proplist_buf;
  base_fs_data_t *bfd = fs->fsap_data;

  /* Sanity check: this node better be mutable! */
  if (! FUNC6(node, txn_id))
    {
      svn_string_t *idstr = FUNC10(node->id, pool);
      return FUNC4
        (SVN_ERR_FS_NOT_MUTABLE, NULL,
         FUNC1("Can't set proplist on *immutable* node-revision %s"),
         idstr->data);
    }

  /* Go get a fresh NODE-REVISION for this node. */
  FUNC0(FUNC14(&noderev, fs, node->id,
                                        trail, pool));
  rep_key = noderev->prop_key;

  /* Flatten the proplist into a string. */
  FUNC0(FUNC17(&proplist_skel, proplist, pool));
  raw_proplist_buf = FUNC16(proplist_skel, pool);

  /* If this repository supports representation sharing, and the
     resulting property list is exactly the same as another string in
     the database, just use the previously existing string and get
     outta here. */
  if (bfd->format >= SVN_FS_BASE__MIN_REP_SHARING_FORMAT)
    {
      svn_error_t *err;
      const char *dup_rep_key;
      svn_checksum_t *checksum;

      FUNC0(FUNC2(&checksum, svn_checksum_sha1, raw_proplist_buf->data,
                           raw_proplist_buf->len, pool));

      err = FUNC13(&dup_rep_key, fs, checksum,
                                         trail, pool);
      if (! err)
        {
          if (noderev->prop_key)
            FUNC0(FUNC8(fs, noderev->prop_key,
                                                       txn_id, trail, pool));
          noderev->prop_key = dup_rep_key;
          return FUNC15(fs, node->id, noderev,
                                               trail, pool);
        }
      else if (err)
        {
          if (err->apr_err != SVN_ERR_FS_NO_SUCH_CHECKSUM_REP)
            return FUNC5(err);

          FUNC3(err);
          err = SVN_NO_ERROR;
        }
    }

  /* Get a mutable version of this rep (updating the node revision if
     this isn't a NOOP)  */
  FUNC0(FUNC9(&mutable_rep_key, rep_key,
                                       fs, txn_id, trail, pool));
  if (! FUNC12(mutable_rep_key, rep_key))
    {
      noderev->prop_key = mutable_rep_key;
      FUNC0(FUNC15(fs, node->id, noderev,
                                            trail, pool));
    }

  /* Replace the old property list with the new one. */
  FUNC0(FUNC11(&wstream, fs,
                                                 mutable_rep_key, txn_id,
                                                 TRUE, trail, pool));
  len = raw_proplist_buf->len;
  FUNC0(FUNC19(wstream, raw_proplist_buf->data, &len));
  FUNC0(FUNC18(wstream));

  return SVN_NO_ERROR;
}