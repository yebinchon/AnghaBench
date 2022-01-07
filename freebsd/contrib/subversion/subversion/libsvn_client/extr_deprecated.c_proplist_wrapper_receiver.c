
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct proplist_receiver_wrapper_baton {int baton; int * (* receiver ) (int ,char const*,int *,int *) ;} ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int * SVN_NO_ERROR ;
 int * stub1 (int ,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
proplist_wrapper_receiver(void *baton,
                          const char *path,
                          apr_hash_t *prop_hash,
                          apr_array_header_t *inherited_props,
                          apr_pool_t *pool)
{
  struct proplist_receiver_wrapper_baton *plrwb = baton;

  if (plrwb->receiver)
    return plrwb->receiver(plrwb->baton, path, prop_hash, pool);

  return SVN_NO_ERROR;
}
