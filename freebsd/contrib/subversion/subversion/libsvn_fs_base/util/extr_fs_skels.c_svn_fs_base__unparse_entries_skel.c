
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void const* data; int len; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_skel_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 TYPE_1__* svn_fs_base__id_unparse (int *,int *) ;
 int * svn_skel__make_empty_list (int *) ;
 int * svn_skel__mem_atom (void const*,int ,int *) ;
 int svn_skel__prepend (int *,int *) ;

svn_error_t *
svn_fs_base__unparse_entries_skel(svn_skel_t **skel_p,
                                  apr_hash_t *entries,
                                  apr_pool_t *pool)
{
  svn_skel_t *skel = svn_skel__make_empty_list(pool);
  apr_hash_index_t *hi;


  if (entries)
    {

      for (hi = apr_hash_first(pool, entries); hi; hi = apr_hash_next(hi))
        {
          const void *key;
          void *val;
          apr_ssize_t klen;
          svn_fs_id_t *value;
          svn_string_t *id_str;
          svn_skel_t *entry_skel = svn_skel__make_empty_list(pool);

          apr_hash_this(hi, &key, &klen, &val);
          value = val;


          id_str = svn_fs_base__id_unparse(value, pool);
          svn_skel__prepend(svn_skel__mem_atom(id_str->data, id_str->len,
                                               pool),
                            entry_skel);


          svn_skel__prepend(svn_skel__mem_atom(key, klen, pool), entry_skel);


          svn_skel__prepend(entry_skel, skel);
        }
    }


  *skel_p = skel;
  return SVN_NO_ERROR;
}
