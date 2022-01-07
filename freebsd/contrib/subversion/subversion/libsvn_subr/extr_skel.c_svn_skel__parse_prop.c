
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_6__ {scalar_t__ len; TYPE_1__* next; int data; struct TYPE_6__* children; } ;
typedef TYPE_2__ svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int len; int data; TYPE_2__* next; } ;


 int * SVN_NO_ERROR ;
 int is_valid_proplist_skel (TYPE_2__ const*) ;
 int * skel_err (char*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char const*,int ,scalar_t__) ;
 int * svn_string_ncreate (int ,int ,int *) ;

svn_error_t *
svn_skel__parse_prop(svn_string_t **propval,
                     const svn_skel_t *skel,
                     const char *propname,
                     apr_pool_t *pool )
{
  svn_skel_t *elt;

  *propval = ((void*)0);


  if (! is_valid_proplist_skel(skel))
    return skel_err("proplist");


  for (elt = skel->children; elt; elt = elt->next->next)
    {
      if (elt->len == strlen(propname)
          && strncmp(propname, elt->data, elt->len) == 0)
        {
          *propval = svn_string_ncreate(elt->next->data, elt->next->len,
                                        pool);
          break;
        }
      else
        {
          continue;
        }
    }
  return SVN_NO_ERROR;
}
