#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trail_t ;
struct TYPE_11__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
struct TYPE_12__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_13__ {char* data_key; } ;
typedef  TYPE_3__ node_revision_t ;
struct TYPE_14__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_4__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (char const**,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC16(dag_node_t *parent,
          const char *name,
          const svn_fs_id_t *id,
          const char *txn_id,
          trail_t *trail,
          apr_pool_t *pool)
{
  node_revision_t *parent_noderev;
  const char *rep_key, *mutable_rep_key;
  apr_hash_t *entries = NULL;
  svn_stream_t *wstream;
  apr_size_t len;
  svn_string_t raw_entries;
  svn_stringbuf_t *raw_entries_buf;
  svn_skel_t *entries_skel;
  svn_fs_t *fs = FUNC2(parent);

  /* Get the parent's node-revision. */
  FUNC0(FUNC9(&parent_noderev, fs, parent->id,
                                        trail, pool));
  rep_key = parent_noderev->data_key;
  FUNC0(FUNC3(&mutable_rep_key, rep_key,
                                       fs, txn_id, trail, pool));

  /* If the parent node already pointed at a mutable representation,
     we don't need to do anything.  But if it didn't, either because
     the parent didn't refer to any rep yet or because it referred to
     an immutable one, we must make the parent refer to the mutable
     rep we just created. */
  if (! FUNC7(rep_key, mutable_rep_key))
    {
      parent_noderev->data_key = mutable_rep_key;
      FUNC0(FUNC10(fs, parent->id, parent_noderev,
                                            trail, pool));
    }

  /* If the new representation inherited nothing, start a new entries
     list for it.  Else, go read its existing entries list. */
  if (rep_key)
    {
      FUNC0(FUNC5(&raw_entries, fs, rep_key,
                                        trail, pool));
      entries_skel = FUNC12(raw_entries.data, raw_entries.len, pool);
      if (entries_skel)
        FUNC0(FUNC4(&entries, entries_skel,
                                                pool));
    }

  /* If we still have no ENTRIES hash, make one here.  */
  if (! entries)
    entries = FUNC1(pool);

  /* Now, add our new entry to the entries list. */
  FUNC11(entries, name, id);

  /* Finally, replace the old entries list with the new one. */
  FUNC0(FUNC8(&entries_skel, entries,
                                            pool));
  raw_entries_buf = FUNC13(entries_skel, pool);
  FUNC0(FUNC6(&wstream, fs,
                                                 mutable_rep_key, txn_id,
                                                 TRUE, trail, pool));
  len = raw_entries_buf->len;
  FUNC0(FUNC15(wstream, raw_entries_buf->data, &len));
  return FUNC14(wstream);
}