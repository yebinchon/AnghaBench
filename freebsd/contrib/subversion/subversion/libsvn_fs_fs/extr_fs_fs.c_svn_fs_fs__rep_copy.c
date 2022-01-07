
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int representation_t ;
typedef int apr_pool_t ;


 int * apr_pmemdup (int *,int *,int) ;

representation_t *
svn_fs_fs__rep_copy(representation_t *rep,
                    apr_pool_t *pool)
{
  if (rep == ((void*)0))
    return ((void*)0);

  return apr_pmemdup(pool, rep, sizeof(*rep));
}
