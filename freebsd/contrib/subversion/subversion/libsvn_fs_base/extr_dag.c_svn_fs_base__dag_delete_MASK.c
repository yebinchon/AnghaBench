#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trail_t ;
struct TYPE_13__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
struct TYPE_14__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_15__ {char* data_key; } ;
typedef  TYPE_3__ node_revision_t ;
struct TYPE_16__ {scalar_t__ kind; int /*<<< orphan*/ * fs; int /*<<< orphan*/  id; } ;
typedef  TYPE_4__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_DIRECTORY ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_MUTABLE ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT ; 
 int /*<<< orphan*/  SVN_ERR_FS_NO_SUCH_ENTRY ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC22(dag_node_t *parent,
                        const char *name,
                        const char *txn_id,
                        trail_t *trail,
                        apr_pool_t *pool)
{
  node_revision_t *parent_noderev;
  const char *rep_key, *mutable_rep_key;
  apr_hash_t *entries = NULL;
  svn_skel_t *entries_skel;
  svn_fs_t *fs = parent->fs;
  svn_string_t str;
  svn_fs_id_t *id = NULL;
  dag_node_t *node;

  /* Make sure parent is a directory. */
  if (parent->kind != svn_node_dir)
    return FUNC2
      (SVN_ERR_FS_NOT_DIRECTORY, NULL,
       FUNC1("Attempted to delete entry '%s' from *non*-directory node"), name);

  /* Make sure parent is mutable. */
  if (! FUNC3(parent, txn_id))
    return FUNC2
      (SVN_ERR_FS_NOT_MUTABLE, NULL,
       FUNC1("Attempted to delete entry '%s' from immutable directory node"),
       name);

  /* Make sure that NAME is a single path component. */
  if (! FUNC17(name))
    return FUNC2
      (SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, NULL,
       FUNC1("Attempted to delete a node with an illegal name '%s'"), name);

  /* Get a fresh NODE-REVISION for the parent node. */
  FUNC0(FUNC13(&parent_noderev, fs, parent->id,
                                        trail, pool));

  /* Get the key for the parent's entries list (data) representation. */
  rep_key = parent_noderev->data_key;

  /* No REP_KEY means no representation, and no representation means
     no data, and no data means no entries...there's nothing here to
     delete! */
  if (! rep_key)
    return FUNC2
      (SVN_ERR_FS_NO_SUCH_ENTRY, NULL,
       FUNC1("Delete failed: directory has no entry '%s'"), name);

  /* Ensure we have a key to a mutable representation of the entries
     list.  We'll have to update the NODE-REVISION if it points to an
     immutable version.  */
  FUNC0(FUNC7(&mutable_rep_key, rep_key,
                                       fs, txn_id, trail, pool));
  if (! FUNC11(mutable_rep_key, rep_key))
    {
      parent_noderev->data_key = mutable_rep_key;
      FUNC0(FUNC14(fs, parent->id, parent_noderev,
                                            trail, pool));
    }

  /* Read the representation, then use it to get the string that holds
     the entries list.  Parse that list into a skel, and parse *that*
     into a hash. */

  FUNC0(FUNC9(&str, fs, rep_key, trail, pool));
  entries_skel = FUNC18(str.data, str.len, pool);
  if (entries_skel)
    FUNC0(FUNC8(&entries, entries_skel, pool));

  /* Find NAME in the ENTRIES skel.  */
  if (entries)
    id = FUNC15(entries, name);

  /* If we never found ID in ENTRIES (perhaps because there are no
     ENTRIES, perhaps because ID just isn't in the existing ENTRIES
     ... it doesn't matter), return an error.  */
  if (! id)
    return FUNC2
      (SVN_ERR_FS_NO_SUCH_ENTRY, NULL,
       FUNC1("Delete failed: directory has no entry '%s'"), name);

  /* Use the ID of this ENTRY to get the entry's node.  */
  FUNC0(FUNC6(&node, FUNC5(parent),
                                    id, trail, pool));

  /* If mutable, remove it and any mutable children from db. */
  FUNC0(FUNC4(parent->fs, id, txn_id,
                                             trail, pool));

  /* Remove this entry from its parent's entries list. */
  FUNC16(entries, name, NULL);

  /* Replace the old entries list with the new one. */
  {
    svn_stream_t *ws;
    svn_stringbuf_t *unparsed_entries;
    apr_size_t len;

    FUNC0(FUNC12(&entries_skel, entries, pool));
    unparsed_entries = FUNC19(entries_skel, pool);
    FUNC0(FUNC10(&ws, fs, mutable_rep_key,
                                                   txn_id, TRUE, trail,
                                                   pool));
    len = unparsed_entries->len;
    FUNC0(FUNC21(ws, unparsed_entries->data, &len));
    FUNC0(FUNC20(ws));
  }

  return SVN_NO_ERROR;
}