
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* data; int len; int is_atom; } ;
typedef TYPE_1__ svn_skel_t ;
typedef int apr_pool_t ;


 int TRUE ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int strlen (char const*) ;

svn_skel_t *
svn_skel__str_atom(const char *str, apr_pool_t *pool)
{
  svn_skel_t *skel = apr_pcalloc(pool, sizeof(*skel));
  skel->is_atom = TRUE;
  skel->data = str;
  skel->len = strlen(str);

  return skel;
}
