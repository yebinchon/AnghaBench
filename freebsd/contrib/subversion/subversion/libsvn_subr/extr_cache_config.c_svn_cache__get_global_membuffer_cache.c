
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_membuffer_t ;
typedef int svn_error_t ;
typedef int svn_atomic_t ;


 int initialize_cache ;
 int * svn_atomic__init_once (int *,int ,int **,int *) ;
 int svn_error_clear (int *) ;

svn_membuffer_t *
svn_cache__get_global_membuffer_cache(void)
{
  static svn_membuffer_t *cache = ((void*)0);
  static svn_atomic_t initialized = 0;

  svn_error_t *err
    = svn_atomic__init_once(&initialized, initialize_cache, &cache, ((void*)0));
  if (err)
    {

      svn_error_clear(err);
      return ((void*)0);
    }

  return cache;
}
