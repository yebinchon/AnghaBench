
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_6__ {int len; int data; TYPE_1__* next; struct TYPE_6__* children; } ;
typedef TYPE_2__ svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_5__ {int len; int data; TYPE_2__* next; } ;


 int * SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 int apr_hash_set (int *,int ,int ,int *) ;
 int apr_pstrmemdup (int *,int ,int ) ;
 int is_valid_proplist_skel (TYPE_2__ const*) ;
 int * skel_err (char*) ;
 int * svn_string_ncreate (int ,int ,int *) ;

svn_error_t *
svn_skel__parse_proplist(apr_hash_t **proplist_p,
                         const svn_skel_t *skel,
                         apr_pool_t *pool )
{
  apr_hash_t *proplist = ((void*)0);
  svn_skel_t *elt;


  if (! is_valid_proplist_skel(skel))
    return skel_err("proplist");


  proplist = apr_hash_make(pool);
  for (elt = skel->children; elt; elt = elt->next->next)
    {
      svn_string_t *value = svn_string_ncreate(elt->next->data,
                                               elt->next->len, pool);
      apr_hash_set(proplist,
                   apr_pstrmemdup(pool, elt->data, elt->len),
                   elt->len,
                   value);
    }


  *proplist_p = proplist;
  return SVN_NO_ERROR;
}
