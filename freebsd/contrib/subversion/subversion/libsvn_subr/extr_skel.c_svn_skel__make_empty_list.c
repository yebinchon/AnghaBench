
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_skel_t ;
typedef int apr_pool_t ;


 int * apr_pcalloc (int *,int) ;

svn_skel_t *
svn_skel__make_empty_list(apr_pool_t *pool)
{
  svn_skel_t *skel = apr_pcalloc(pool, sizeof(*skel));
  return skel;
}
