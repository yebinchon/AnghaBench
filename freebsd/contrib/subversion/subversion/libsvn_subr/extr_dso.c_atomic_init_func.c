
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int apr_hash_make (int ) ;
 int dso_cache ;
 int dso_mutex ;
 int dso_pool ;
 int svn_mutex__init (int *,int ,int ) ;
 int svn_pool_create (int *) ;

__attribute__((used)) static svn_error_t *
atomic_init_func(void *baton,
                 apr_pool_t *pool)
{
  dso_pool = svn_pool_create(((void*)0));

  SVN_ERR(svn_mutex__init(&dso_mutex, TRUE, dso_pool));

  dso_cache = apr_hash_make(dso_pool);
  return SVN_NO_ERROR;
}
