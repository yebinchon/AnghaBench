
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* svn_proplist_receiver2_t ) (void*,char const*,int *,int *,int *) ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_count (int *) ;

__attribute__((used)) static svn_error_t*
call_receiver(const char *path,
              apr_hash_t *prop_hash,
              apr_array_header_t *inherited_properties,
              svn_proplist_receiver2_t receiver,
              void *receiver_baton,
              apr_pool_t *scratch_pool)
{
  if ((prop_hash && apr_hash_count(prop_hash))
      || inherited_properties)
    SVN_ERR(receiver(receiver_baton, path, prop_hash, inherited_properties,
                     scratch_pool));

  return SVN_NO_ERROR;
}
