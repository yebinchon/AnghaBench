#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_1__* fs; } ;
typedef  TYPE_2__ trail_t ;
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
struct TYPE_22__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
struct TYPE_23__ {void const* name; int /*<<< orphan*/  const* id; } ;
typedef  TYPE_4__ svn_fs_dirent_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_24__ {int /*<<< orphan*/  prop_key; } ;
typedef  TYPE_5__ node_revision_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
struct TYPE_25__ {scalar_t__ format; } ;
typedef  TYPE_6__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_20__ {TYPE_6__* fsap_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/  SVN_ERR_FS_GENERAL ; 
 scalar_t__ SVN_FS_BASE__MIN_MERGEINFO_FORMAT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,scalar_t__,char const*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,void const*,char const*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/  const*,char const*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/  const*) ; 
 TYPE_3__* FUNC26 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC28 (TYPE_5__**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 char const* FUNC29 (char const*,void const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC34 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char const*,char const*,int,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC35(svn_stringbuf_t *conflict_p,
      const char *target_path,
      dag_node_t *target,
      dag_node_t *source,
      dag_node_t *ancestor,
      const char *txn_id,
      apr_int64_t *mergeinfo_increment_out,
      trail_t *trail,
      apr_pool_t *pool)
{
  const svn_fs_id_t *source_id, *target_id, *ancestor_id;
  apr_hash_t *s_entries, *t_entries, *a_entries;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool;
  svn_fs_t *fs;
  int pred_count;
  apr_int64_t mergeinfo_increment = 0;
  base_fs_data_t *bfd = trail->fs->fsap_data;

  /* Make sure everyone comes from the same filesystem. */
  fs = FUNC16(ancestor);
  if ((fs != FUNC16(source))
      || (fs != FUNC16(target)))
    {
      return FUNC10
        (SVN_ERR_FS_CORRUPT, NULL,
         FUNC1("Bad merge; ancestor, source, and target not all in same fs"));
    }

  /* We have the same fs, now check it. */
  FUNC0(FUNC12(fs, TRUE));

  source_id   = FUNC17(source);
  target_id   = FUNC17(target);
  ancestor_id = FUNC17(ancestor);

  /* It's improper to call this function with ancestor == target. */
  if (FUNC24(ancestor_id, target_id))
    {
      svn_string_t *id_str = FUNC26(target_id, pool);
      return FUNC11
        (SVN_ERR_FS_GENERAL, NULL,
         FUNC1("Bad merge; target '%s' has id '%s', same as ancestor"),
         target_path, id_str->data);
    }

  FUNC33(conflict_p);

  /* Base cases:
   * Either no change made in source, or same change as made in target.
   * Both mean nothing to merge here.
   */
  if (FUNC24(ancestor_id, source_id)
      || (FUNC24(source_id, target_id)))
    return SVN_NO_ERROR;

  /* Else proceed, knowing all three are distinct node revisions.
   *
   * How to merge from this point:
   *
   * if (not all 3 are directories)
   *   {
   *     early exit with conflict;
   *   }
   *
   * // Property changes may only be made to up-to-date
   * // directories, because once the client commits the prop
   * // change, it bumps the directory's revision, and therefore
   * // must be able to depend on there being no other changes to
   * // that directory in the repository.
   * if (target's property list differs from ancestor's)
   *    conflict;
   *
   * For each entry NAME in the directory ANCESTOR:
   *
   *   Let ANCESTOR-ENTRY, SOURCE-ENTRY, and TARGET-ENTRY be the IDs of
   *   the name within ANCESTOR, SOURCE, and TARGET respectively.
   *   (Possibly null if NAME does not exist in SOURCE or TARGET.)
   *
   *   If ANCESTOR-ENTRY == SOURCE-ENTRY, then:
   *     No changes were made to this entry while the transaction was in
   *     progress, so do nothing to the target.
   *
   *   Else if ANCESTOR-ENTRY == TARGET-ENTRY, then:
   *     A change was made to this entry while the transaction was in
   *     process, but the transaction did not touch this entry.  Replace
   *     TARGET-ENTRY with SOURCE-ENTRY.
   *
   *   Else:
   *     Changes were made to this entry both within the transaction and
   *     to the repository while the transaction was in progress.  They
   *     must be merged or declared to be in conflict.
   *
   *     If SOURCE-ENTRY and TARGET-ENTRY are both null, that's a
   *     double delete; flag a conflict.
   *
   *     If any of the three entries is of type file, declare a conflict.
   *
   *     If either SOURCE-ENTRY or TARGET-ENTRY is not a direct
   *     modification of ANCESTOR-ENTRY (determine by comparing the
   *     node-id fields), declare a conflict.  A replacement is
   *     incompatible with a modification or other replacement--even
   *     an identical replacement.
   *
   *     Direct modifications were made to the directory ANCESTOR-ENTRY
   *     in both SOURCE and TARGET.  Recursively merge these
   *     modifications.
   *
   * For each leftover entry NAME in the directory SOURCE:
   *
   *   If NAME exists in TARGET, declare a conflict.  Even if SOURCE and
   *   TARGET are adding exactly the same thing, two additions are not
   *   auto-mergeable with each other.
   *
   *   Add NAME to TARGET with the entry from SOURCE.
   *
   * Now that we are done merging the changes from SOURCE into the
   * directory TARGET, update TARGET's predecessor to be SOURCE.
   */

  if ((FUNC21(source) != svn_node_dir)
      || (FUNC21(target) != svn_node_dir)
      || (FUNC21(ancestor) != svn_node_dir))
    {
      return FUNC8(conflict_p, target_path);
    }


  /* Possible early merge failure: if target and ancestor have
     different property lists, then the merge should fail.
     Propchanges can *only* be committed on an up-to-date directory.
     ### TODO: see issue #418 about the inelegance of this.

     Another possible, similar, early merge failure: if source and
     ancestor have different property lists (meaning someone else
     changed directory properties while our commit transaction was
     happening), the merge should fail.  See issue #2751.
  */
  {
    node_revision_t *tgt_nr, *anc_nr, *src_nr;

    /* Get node revisions for our id's. */
    FUNC0(FUNC28(&tgt_nr, fs, target_id,
                                          trail, pool));
    FUNC0(FUNC28(&anc_nr, fs, ancestor_id,
                                          trail, pool));
    FUNC0(FUNC28(&src_nr, fs, source_id,
                                          trail, pool));

    /* Now compare the prop-keys of the skels.  Note that just because
       the keys are different -doesn't- mean the proplists have
       different contents.  But merge() isn't concerned with contents;
       it doesn't do a brute-force comparison on textual contents, so
       it won't do that here either.  Checking to see if the propkey
       atoms are `equal' is enough. */
    if (! FUNC27(tgt_nr->prop_key, anc_nr->prop_key))
      return FUNC8(conflict_p, target_path);
    if (! FUNC27(src_nr->prop_key, anc_nr->prop_key))
      return FUNC8(conflict_p, target_path);
  }

  /* ### todo: it would be more efficient to simply check for a NULL
     entries hash where necessary below than to allocate an empty hash
     here, but another day, another day... */
  FUNC0(FUNC15(&s_entries, source, trail, pool));
  if (! s_entries)
    s_entries = FUNC4(pool);
  FUNC0(FUNC15(&t_entries, target, trail, pool));
  if (! t_entries)
    t_entries = FUNC4(pool);
  FUNC0(FUNC15(&a_entries, ancestor, trail, pool));
  if (! a_entries)
    a_entries = FUNC4(pool);

  /* for each entry E in a_entries... */
  iterpool = FUNC31(pool);
  for (hi = FUNC2(pool, a_entries);
       hi;
       hi = FUNC5(hi))
    {
      svn_fs_dirent_t *s_entry, *t_entry, *a_entry;

      const void *key;
      void *val;
      apr_ssize_t klen;

      FUNC30(iterpool);

      /* KEY will be the entry name in ancestor, VAL the dirent */
      FUNC7(hi, &key, &klen, &val);
      a_entry = val;

      s_entry = FUNC3(s_entries, key, klen);
      t_entry = FUNC3(t_entries, key, klen);

      /* No changes were made to this entry while the transaction was
         in progress, so do nothing to the target. */
      if (s_entry && FUNC24(a_entry->id, s_entry->id))
        goto end;

      /* A change was made to this entry while the transaction was in
         process, but the transaction did not touch this entry. */
      else if (t_entry && FUNC24(a_entry->id, t_entry->id))
        {
          dag_node_t *t_ent_node;
          apr_int64_t mergeinfo_start;
          FUNC0(FUNC19(&t_ent_node, fs,
                                            t_entry->id, trail, iterpool));
          FUNC0(FUNC18(NULL, &mergeinfo_start,
                                                       t_ent_node, trail,
                                                       iterpool));
          mergeinfo_increment -= mergeinfo_start;

           if (s_entry)
             {
              dag_node_t *s_ent_node;
              apr_int64_t mergeinfo_end;
              FUNC0(FUNC19(&s_ent_node, fs,
                                                s_entry->id, trail,
                                                iterpool));
              FUNC0(FUNC18(NULL,
                                                           &mergeinfo_end,
                                                           s_ent_node, trail,
                                                           iterpool));
              mergeinfo_increment += mergeinfo_end;
              FUNC0(FUNC22(target, key, s_entry->id,
                                                 txn_id, trail, iterpool));
            }
          else
            {
              FUNC0(FUNC14(target, key, txn_id,
                                              trail, iterpool));
            }
        }

      /* Changes were made to this entry both within the transaction
         and to the repository while the transaction was in progress.
         They must be merged or declared to be in conflict. */
      else
        {
          dag_node_t *s_ent_node, *t_ent_node, *a_ent_node;
          const char *new_tpath;
          apr_int64_t sub_mergeinfo_increment;

          /* If SOURCE-ENTRY and TARGET-ENTRY are both null, that's a
             double delete; if one of them is null, that's a delete versus
             a modification. In any of these cases, flag a conflict. */
          if (s_entry == NULL || t_entry == NULL)
            return FUNC8(conflict_p,
                                FUNC29(target_path,
                                                a_entry->name,
                                                iterpool));

          /* If either SOURCE-ENTRY or TARGET-ENTRY is not a direct
             modification of ANCESTOR-ENTRY, declare a conflict. */
          if (FUNC9(FUNC25(s_entry->id),
                     FUNC25(a_entry->id)) != 0
              || FUNC9(FUNC23(s_entry->id),
                        FUNC23(a_entry->id)) != 0
              || FUNC9(FUNC25(t_entry->id),
                        FUNC25(a_entry->id)) != 0
              || FUNC9(FUNC23(t_entry->id),
                        FUNC23(a_entry->id)) != 0)
            return FUNC8(conflict_p,
                                FUNC29(target_path,
                                                a_entry->name,
                                                iterpool));

          /* Fetch the nodes for our entries. */
          FUNC0(FUNC19(&s_ent_node, fs,
                                            s_entry->id, trail, iterpool));
          FUNC0(FUNC19(&t_ent_node, fs,
                                            t_entry->id, trail, iterpool));
          FUNC0(FUNC19(&a_ent_node, fs,
                                            a_entry->id, trail, iterpool));

          /* If any of the three entries is of type file, flag a conflict. */
          if ((FUNC21(s_ent_node) == svn_node_file)
              || (FUNC21(t_ent_node) == svn_node_file)
              || (FUNC21(a_ent_node) == svn_node_file))
            return FUNC8(conflict_p,
                                FUNC29(target_path,
                                                a_entry->name,
                                                iterpool));

          /* Direct modifications were made to the directory
             ANCESTOR-ENTRY in both SOURCE and TARGET.  Recursively
             merge these modifications. */
          new_tpath = FUNC29(target_path, t_entry->name, iterpool);
          FUNC0(FUNC35(conflict_p, new_tpath,
                        t_ent_node, s_ent_node, a_ent_node,
                        txn_id, &sub_mergeinfo_increment, trail, iterpool));
          mergeinfo_increment += sub_mergeinfo_increment;
        }

      /* We've taken care of any possible implications E could have.
         Remove it from source_entries, so it's easy later to loop
         over all the source entries that didn't exist in
         ancestor_entries. */
    end:
      FUNC6(s_entries, key, klen, NULL);
    }

  /* For each entry E in source but not in ancestor */
  for (hi = FUNC2(pool, s_entries);
       hi;
       hi = FUNC5(hi))
    {
      svn_fs_dirent_t *s_entry, *t_entry;
      const void *key;
      void *val;
      apr_ssize_t klen;
      dag_node_t *s_ent_node;
      apr_int64_t mergeinfo_s;

      FUNC30(iterpool);

      FUNC7(hi, &key, &klen, &val);
      s_entry = val;
      t_entry = FUNC3(t_entries, key, klen);

      /* If NAME exists in TARGET, declare a conflict. */
      if (t_entry)
        return FUNC8(conflict_p,
                            FUNC29(target_path,
                                            t_entry->name,
                                            iterpool));

      FUNC0(FUNC19(&s_ent_node, fs,
                                        s_entry->id, trail, iterpool));
      FUNC0(FUNC18(NULL, &mergeinfo_s,
                                                   s_ent_node, trail,
                                                   iterpool));
      mergeinfo_increment += mergeinfo_s;
      FUNC0(FUNC22
              (target, s_entry->name, s_entry->id, txn_id, trail, iterpool));
    }
  FUNC32(iterpool);

  /* Now that TARGET has absorbed all of the history between ANCESTOR
     and SOURCE, we can update its predecessor to point to SOURCE.  */
  FUNC0(FUNC20(&pred_count, source,
                                                 trail, pool));
  FUNC0(FUNC34(fs, source_id, target_id, txn_id, target_path,
                          pred_count, trail, pool));

  /* Tweak mergeinfo data if our format supports it. */
  if (bfd->format >= SVN_FS_BASE__MIN_MERGEINFO_FORMAT)
    {
      FUNC0(FUNC13(target,
                                                      mergeinfo_increment,
                                                      txn_id, trail, pool));
    }

  if (mergeinfo_increment_out)
    *mergeinfo_increment_out = mergeinfo_increment;

  return SVN_NO_ERROR;
}