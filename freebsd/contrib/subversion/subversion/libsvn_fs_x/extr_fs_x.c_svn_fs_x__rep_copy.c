
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_x__representation_t ;
typedef int apr_pool_t ;


 int * apr_pmemdup (int *,int *,int) ;

svn_fs_x__representation_t *
svn_fs_x__rep_copy(svn_fs_x__representation_t *rep,
                   apr_pool_t *result_pool)
{
  if (rep == ((void*)0))
    return ((void*)0);

  return apr_pmemdup(result_pool, rep, sizeof(*rep));
}
