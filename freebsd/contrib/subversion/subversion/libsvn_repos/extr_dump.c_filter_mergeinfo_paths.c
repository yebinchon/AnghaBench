
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct filter_mergeinfo_paths_baton {int paths; } ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_get (int ,void const*,int ) ;
 int apr_hash_set (int ,void const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
filter_mergeinfo_paths(void *baton, const void *key, apr_ssize_t klen,
                       void *val, apr_pool_t *iterpool)
{
  struct filter_mergeinfo_paths_baton *const fb = baton;

  if (apr_hash_get(fb->paths, key, klen))
    apr_hash_set(fb->paths, key, klen, ((void*)0));

  return SVN_NO_ERROR;
}
