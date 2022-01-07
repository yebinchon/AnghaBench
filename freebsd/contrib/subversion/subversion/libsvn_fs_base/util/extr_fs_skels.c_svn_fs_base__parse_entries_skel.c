
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; struct TYPE_4__* children; struct TYPE_4__* next; int data; } ;
typedef TYPE_1__ svn_skel_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 int apr_hash_set (int *,char const*,int ,int *) ;
 char* apr_pstrmemdup (int *,int ,int ) ;
 int * skel_err (char*) ;
 int * svn_fs_base__id_parse (int ,int ,int *) ;
 int svn_skel__list_length (TYPE_1__*) ;

svn_error_t *
svn_fs_base__parse_entries_skel(apr_hash_t **entries_p,
                                svn_skel_t *skel,
                                apr_pool_t *pool)
{
  apr_hash_t *entries = ((void*)0);
  int len = svn_skel__list_length(skel);
  svn_skel_t *elt;

  if (! (len >= 0))
    return skel_err("entries");

  if (len > 0)
    {

      entries = apr_hash_make(pool);


      for (elt = skel->children; elt; elt = elt->next)
        {
          const char *name;
          svn_fs_id_t *id;


          if (svn_skel__list_length(elt) != 2)
            return skel_err("entries");


          name = apr_pstrmemdup(pool, elt->children->data,
                                elt->children->len);
          id = svn_fs_base__id_parse(elt->children->next->data,
                                     elt->children->next->len, pool);


          apr_hash_set(entries, name, elt->children->len, id);
        }
    }


  *entries_p = entries;
  return SVN_NO_ERROR;
}
