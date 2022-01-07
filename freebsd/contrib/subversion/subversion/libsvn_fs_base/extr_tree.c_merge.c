
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_21__ {TYPE_1__* fs; } ;
typedef TYPE_2__ trail_t ;
typedef int svn_stringbuf_t ;
struct TYPE_22__ {int data; } ;
typedef TYPE_3__ svn_string_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
struct TYPE_23__ {void const* name; int const* id; } ;
typedef TYPE_4__ svn_fs_dirent_t ;
typedef int svn_error_t ;
struct TYPE_24__ {int prop_key; } ;
typedef TYPE_5__ node_revision_t ;
typedef int dag_node_t ;
struct TYPE_25__ {scalar_t__ format; } ;
typedef TYPE_6__ base_fs_data_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
struct TYPE_20__ {TYPE_6__* fsap_data; } ;


 int SVN_ERR (int *) ;
 int SVN_ERR_FS_CORRUPT ;
 int SVN_ERR_FS_GENERAL ;
 scalar_t__ SVN_FS_BASE__MIN_MERGEINFO_FORMAT ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int * apr_hash_first (int *,int *) ;
 TYPE_4__* apr_hash_get (int *,void const*,int ) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_set (int *,void const*,int ,int *) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 int * conflict_err (int *,char const*) ;
 scalar_t__ strcmp (int ,int ) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*,int ) ;
 int * svn_fs__check_fs (int *,int ) ;
 int * svn_fs_base__dag_adjust_mergeinfo_count (int *,scalar_t__,char const*,TYPE_2__*,int *) ;
 int * svn_fs_base__dag_delete (int *,void const*,char const*,TYPE_2__*,int *) ;
 int * svn_fs_base__dag_dir_entries (int **,int *,TYPE_2__*,int *) ;
 int * svn_fs_base__dag_get_fs (int *) ;
 int * svn_fs_base__dag_get_id (int *) ;
 int * svn_fs_base__dag_get_mergeinfo_stats (int *,scalar_t__*,int *,TYPE_2__*,int *) ;
 int * svn_fs_base__dag_get_node (int **,int *,int const*,TYPE_2__*,int *) ;
 int * svn_fs_base__dag_get_predecessor_count (int*,int *,TYPE_2__*,int *) ;
 scalar_t__ svn_fs_base__dag_node_kind (int *) ;
 int * svn_fs_base__dag_set_entry (int *,void const*,int const*,char const*,TYPE_2__*,int *) ;
 int svn_fs_base__id_copy_id (int const*) ;
 scalar_t__ svn_fs_base__id_eq (int const*,int const*) ;
 int svn_fs_base__id_node_id (int const*) ;
 TYPE_3__* svn_fs_base__id_unparse (int const*,int *) ;
 int svn_fs_base__same_keys (int ,int ) ;
 int * svn_fs_bdb__get_node_revision (TYPE_5__**,int *,int const*,TYPE_2__*,int *) ;
 char const* svn_fspath__join (char const*,void const*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_stringbuf_setempty (int *) ;
 int * update_ancestry (int *,int const*,int const*,char const*,char const*,int,TYPE_2__*,int *) ;

__attribute__((used)) static svn_error_t *
merge(svn_stringbuf_t *conflict_p,
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


  fs = svn_fs_base__dag_get_fs(ancestor);
  if ((fs != svn_fs_base__dag_get_fs(source))
      || (fs != svn_fs_base__dag_get_fs(target)))
    {
      return svn_error_create
        (SVN_ERR_FS_CORRUPT, ((void*)0),
         _("Bad merge; ancestor, source, and target not all in same fs"));
    }


  SVN_ERR(svn_fs__check_fs(fs, TRUE));

  source_id = svn_fs_base__dag_get_id(source);
  target_id = svn_fs_base__dag_get_id(target);
  ancestor_id = svn_fs_base__dag_get_id(ancestor);


  if (svn_fs_base__id_eq(ancestor_id, target_id))
    {
      svn_string_t *id_str = svn_fs_base__id_unparse(target_id, pool);
      return svn_error_createf
        (SVN_ERR_FS_GENERAL, ((void*)0),
         _("Bad merge; target '%s' has id '%s', same as ancestor"),
         target_path, id_str->data);
    }

  svn_stringbuf_setempty(conflict_p);





  if (svn_fs_base__id_eq(ancestor_id, source_id)
      || (svn_fs_base__id_eq(source_id, target_id)))
    return SVN_NO_ERROR;
  if ((svn_fs_base__dag_node_kind(source) != svn_node_dir)
      || (svn_fs_base__dag_node_kind(target) != svn_node_dir)
      || (svn_fs_base__dag_node_kind(ancestor) != svn_node_dir))
    {
      return conflict_err(conflict_p, target_path);
    }
  {
    node_revision_t *tgt_nr, *anc_nr, *src_nr;


    SVN_ERR(svn_fs_bdb__get_node_revision(&tgt_nr, fs, target_id,
                                          trail, pool));
    SVN_ERR(svn_fs_bdb__get_node_revision(&anc_nr, fs, ancestor_id,
                                          trail, pool));
    SVN_ERR(svn_fs_bdb__get_node_revision(&src_nr, fs, source_id,
                                          trail, pool));







    if (! svn_fs_base__same_keys(tgt_nr->prop_key, anc_nr->prop_key))
      return conflict_err(conflict_p, target_path);
    if (! svn_fs_base__same_keys(src_nr->prop_key, anc_nr->prop_key))
      return conflict_err(conflict_p, target_path);
  }




  SVN_ERR(svn_fs_base__dag_dir_entries(&s_entries, source, trail, pool));
  if (! s_entries)
    s_entries = apr_hash_make(pool);
  SVN_ERR(svn_fs_base__dag_dir_entries(&t_entries, target, trail, pool));
  if (! t_entries)
    t_entries = apr_hash_make(pool);
  SVN_ERR(svn_fs_base__dag_dir_entries(&a_entries, ancestor, trail, pool));
  if (! a_entries)
    a_entries = apr_hash_make(pool);


  iterpool = svn_pool_create(pool);
  for (hi = apr_hash_first(pool, a_entries);
       hi;
       hi = apr_hash_next(hi))
    {
      svn_fs_dirent_t *s_entry, *t_entry, *a_entry;

      const void *key;
      void *val;
      apr_ssize_t klen;

      svn_pool_clear(iterpool);


      apr_hash_this(hi, &key, &klen, &val);
      a_entry = val;

      s_entry = apr_hash_get(s_entries, key, klen);
      t_entry = apr_hash_get(t_entries, key, klen);



      if (s_entry && svn_fs_base__id_eq(a_entry->id, s_entry->id))
        goto end;



      else if (t_entry && svn_fs_base__id_eq(a_entry->id, t_entry->id))
        {
          dag_node_t *t_ent_node;
          apr_int64_t mergeinfo_start;
          SVN_ERR(svn_fs_base__dag_get_node(&t_ent_node, fs,
                                            t_entry->id, trail, iterpool));
          SVN_ERR(svn_fs_base__dag_get_mergeinfo_stats(((void*)0), &mergeinfo_start,
                                                       t_ent_node, trail,
                                                       iterpool));
          mergeinfo_increment -= mergeinfo_start;

           if (s_entry)
             {
              dag_node_t *s_ent_node;
              apr_int64_t mergeinfo_end;
              SVN_ERR(svn_fs_base__dag_get_node(&s_ent_node, fs,
                                                s_entry->id, trail,
                                                iterpool));
              SVN_ERR(svn_fs_base__dag_get_mergeinfo_stats(((void*)0),
                                                           &mergeinfo_end,
                                                           s_ent_node, trail,
                                                           iterpool));
              mergeinfo_increment += mergeinfo_end;
              SVN_ERR(svn_fs_base__dag_set_entry(target, key, s_entry->id,
                                                 txn_id, trail, iterpool));
            }
          else
            {
              SVN_ERR(svn_fs_base__dag_delete(target, key, txn_id,
                                              trail, iterpool));
            }
        }




      else
        {
          dag_node_t *s_ent_node, *t_ent_node, *a_ent_node;
          const char *new_tpath;
          apr_int64_t sub_mergeinfo_increment;




          if (s_entry == ((void*)0) || t_entry == ((void*)0))
            return conflict_err(conflict_p,
                                svn_fspath__join(target_path,
                                                a_entry->name,
                                                iterpool));



          if (strcmp(svn_fs_base__id_node_id(s_entry->id),
                     svn_fs_base__id_node_id(a_entry->id)) != 0
              || strcmp(svn_fs_base__id_copy_id(s_entry->id),
                        svn_fs_base__id_copy_id(a_entry->id)) != 0
              || strcmp(svn_fs_base__id_node_id(t_entry->id),
                        svn_fs_base__id_node_id(a_entry->id)) != 0
              || strcmp(svn_fs_base__id_copy_id(t_entry->id),
                        svn_fs_base__id_copy_id(a_entry->id)) != 0)
            return conflict_err(conflict_p,
                                svn_fspath__join(target_path,
                                                a_entry->name,
                                                iterpool));


          SVN_ERR(svn_fs_base__dag_get_node(&s_ent_node, fs,
                                            s_entry->id, trail, iterpool));
          SVN_ERR(svn_fs_base__dag_get_node(&t_ent_node, fs,
                                            t_entry->id, trail, iterpool));
          SVN_ERR(svn_fs_base__dag_get_node(&a_ent_node, fs,
                                            a_entry->id, trail, iterpool));


          if ((svn_fs_base__dag_node_kind(s_ent_node) == svn_node_file)
              || (svn_fs_base__dag_node_kind(t_ent_node) == svn_node_file)
              || (svn_fs_base__dag_node_kind(a_ent_node) == svn_node_file))
            return conflict_err(conflict_p,
                                svn_fspath__join(target_path,
                                                a_entry->name,
                                                iterpool));




          new_tpath = svn_fspath__join(target_path, t_entry->name, iterpool);
          SVN_ERR(merge(conflict_p, new_tpath,
                        t_ent_node, s_ent_node, a_ent_node,
                        txn_id, &sub_mergeinfo_increment, trail, iterpool));
          mergeinfo_increment += sub_mergeinfo_increment;
        }





    end:
      apr_hash_set(s_entries, key, klen, ((void*)0));
    }


  for (hi = apr_hash_first(pool, s_entries);
       hi;
       hi = apr_hash_next(hi))
    {
      svn_fs_dirent_t *s_entry, *t_entry;
      const void *key;
      void *val;
      apr_ssize_t klen;
      dag_node_t *s_ent_node;
      apr_int64_t mergeinfo_s;

      svn_pool_clear(iterpool);

      apr_hash_this(hi, &key, &klen, &val);
      s_entry = val;
      t_entry = apr_hash_get(t_entries, key, klen);


      if (t_entry)
        return conflict_err(conflict_p,
                            svn_fspath__join(target_path,
                                            t_entry->name,
                                            iterpool));

      SVN_ERR(svn_fs_base__dag_get_node(&s_ent_node, fs,
                                        s_entry->id, trail, iterpool));
      SVN_ERR(svn_fs_base__dag_get_mergeinfo_stats(((void*)0), &mergeinfo_s,
                                                   s_ent_node, trail,
                                                   iterpool));
      mergeinfo_increment += mergeinfo_s;
      SVN_ERR(svn_fs_base__dag_set_entry
              (target, s_entry->name, s_entry->id, txn_id, trail, iterpool));
    }
  svn_pool_destroy(iterpool);



  SVN_ERR(svn_fs_base__dag_get_predecessor_count(&pred_count, source,
                                                 trail, pool));
  SVN_ERR(update_ancestry(fs, source_id, target_id, txn_id, target_path,
                          pred_count, trail, pool));


  if (bfd->format >= SVN_FS_BASE__MIN_MERGEINFO_FORMAT)
    {
      SVN_ERR(svn_fs_base__dag_adjust_mergeinfo_count(target,
                                                      mergeinfo_increment,
                                                      txn_id, trail, pool));
    }

  if (mergeinfo_increment_out)
    *mergeinfo_increment_out = mergeinfo_increment;

  return SVN_NO_ERROR;
}
