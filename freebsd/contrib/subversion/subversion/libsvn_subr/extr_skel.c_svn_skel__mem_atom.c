
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; void const* data; int is_atom; } ;
typedef TYPE_1__ svn_skel_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int TRUE ;
 TYPE_1__* apr_pcalloc (int *,int) ;

svn_skel_t *
svn_skel__mem_atom(const void *addr,
                   apr_size_t len,
                   apr_pool_t *pool)
{
  svn_skel_t *skel = apr_pcalloc(pool, sizeof(*skel));
  skel->is_atom = TRUE;
  skel->data = addr;
  skel->len = len;

  return skel;
}
