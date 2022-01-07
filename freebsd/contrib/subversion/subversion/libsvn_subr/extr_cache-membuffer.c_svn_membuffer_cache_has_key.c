
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int combined_key; int membuffer; int key_len; } ;
typedef TYPE_1__ svn_membuffer_cache_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int combine_key (TYPE_1__*,void const*,int ) ;
 int membuffer_cache_has_key (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
svn_membuffer_cache_has_key(svn_boolean_t *found,
                            void *cache_void,
                            const void *key,
                            apr_pool_t *scratch_pool)
{
  svn_membuffer_cache_t *cache = cache_void;


  if (key == ((void*)0))
    {
      *found = FALSE;

      return SVN_NO_ERROR;
    }




  combine_key(cache, key, cache->key_len);


  SVN_ERR(membuffer_cache_has_key(cache->membuffer,
                                  &cache->combined_key,
                                  found));


  return SVN_NO_ERROR;
}
