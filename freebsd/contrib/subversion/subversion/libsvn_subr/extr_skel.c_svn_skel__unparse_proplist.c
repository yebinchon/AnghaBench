
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void const* data; int len; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 int is_valid_proplist_skel (int *) ;
 int * skel_err (char*) ;
 int * svn_skel__make_empty_list (int *) ;
 int svn_skel__mem_atom (void const*,int ,int *) ;
 int svn_skel__prepend (int ,int *) ;

svn_error_t *
svn_skel__unparse_proplist(svn_skel_t **skel_p,
                           const apr_hash_t *proplist,
                           apr_pool_t *pool)
{
  svn_skel_t *skel = svn_skel__make_empty_list(pool);
  apr_hash_index_t *hi;


  if (proplist)
    {

      for (hi = apr_hash_first(pool, (apr_hash_t *)proplist); hi;
           hi = apr_hash_next(hi))
        {
          const void *key;
          void *val;
          apr_ssize_t klen;
          svn_string_t *value;

          apr_hash_this(hi, &key, &klen, &val);
          value = val;


          svn_skel__prepend(svn_skel__mem_atom(value->data, value->len, pool),
                            skel);


          svn_skel__prepend(svn_skel__mem_atom(key, klen, pool), skel);
        }
    }


  if (! is_valid_proplist_skel(skel))
    return skel_err("proplist");
  *skel_p = skel;
  return SVN_NO_ERROR;
}
