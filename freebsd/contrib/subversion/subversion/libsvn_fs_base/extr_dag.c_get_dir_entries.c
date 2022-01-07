
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int trail_t ;
struct TYPE_8__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_skel_t ;
typedef int svn_fs_t ;
struct TYPE_9__ {int kind; void* id; void const* name; } ;
typedef TYPE_2__ svn_fs_dirent_t ;
typedef int svn_error_t ;
struct TYPE_10__ {scalar_t__ kind; int data_key; } ;
typedef TYPE_3__ node_revision_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_DIRECTORY ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_set (int *,void const*,int ,TYPE_2__*) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 TYPE_2__* apr_palloc (int *,int) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_base__parse_entries_skel (int **,int *,int *) ;
 int svn_fs_base__rep_contents (TYPE_1__*,int *,int ,int *,int *) ;
 scalar_t__ svn_node_dir ;
 int svn_node_unknown ;
 int * svn_skel__parse (int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_dir_entries(apr_hash_t **entries_p,
                svn_fs_t *fs,
                node_revision_t *noderev,
                trail_t *trail,
                apr_pool_t *pool)
{
  apr_hash_t *entries = ((void*)0);
  apr_hash_index_t *hi;
  svn_string_t entries_raw;
  svn_skel_t *entries_skel;


  if (noderev->kind != svn_node_dir)
    return svn_error_create
      (SVN_ERR_FS_NOT_DIRECTORY, ((void*)0),
       _("Attempted to get entries of a non-directory node"));


  if (noderev->data_key)
    {

      SVN_ERR(svn_fs_base__rep_contents(&entries_raw, fs, noderev->data_key,
                                        trail, pool));
      entries_skel = svn_skel__parse(entries_raw.data, entries_raw.len, pool);


      if (entries_skel)
        SVN_ERR(svn_fs_base__parse_entries_skel(&entries, entries_skel,
                                                pool));
    }


  *entries_p = ((void*)0);
  if (! entries)
    return SVN_NO_ERROR;


  *entries_p = apr_hash_make(pool);
  for (hi = apr_hash_first(pool, entries); hi; hi = apr_hash_next(hi))
    {
      const void *key;
      apr_ssize_t klen;
      void *val;
      svn_fs_dirent_t *dirent = apr_palloc(pool, sizeof(*dirent));


      apr_hash_this(hi, &key, &klen, &val);
      dirent->name = key;
      dirent->id = val;
      dirent->kind = svn_node_unknown;
      apr_hash_set(*entries_p, key, klen, dirent);
    }


  return SVN_NO_ERROR;
}
