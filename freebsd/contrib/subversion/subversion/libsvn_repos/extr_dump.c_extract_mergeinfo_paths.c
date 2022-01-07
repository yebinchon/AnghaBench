
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int pool; } ;
struct extract_mergeinfo_paths_baton {TYPE_1__ buffer; int result; scalar_t__ normalize; } ;
typedef scalar_t__ apr_ssize_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_hash_set (int ,int ,scalar_t__,int ) ;
 int apr_pmemdup (int ,void const*,scalar_t__) ;
 int apr_pstrdup (int ,char const*) ;
 int normalized_unique ;
 int svn_hash_sets (int ,int ,int ) ;
 int svn_utf__normalize (char const**,void const*,scalar_t__,TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
extract_mergeinfo_paths(void *baton, const void *key, apr_ssize_t klen,
                         void *val, apr_pool_t *iterpool)
{
  struct extract_mergeinfo_paths_baton *const xb = baton;
  if (xb->normalize)
    {
      const char *normkey;
      SVN_ERR(svn_utf__normalize(&normkey, key, klen, &xb->buffer));
      svn_hash_sets(xb->result,
                    apr_pstrdup(xb->buffer.pool, normkey),
                    normalized_unique);
    }
  else
    apr_hash_set(xb->result,
                 apr_pmemdup(xb->buffer.pool, key, klen + 1), klen,
                 normalized_unique);
  return SVN_NO_ERROR;
}
