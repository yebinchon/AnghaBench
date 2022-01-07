
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;
struct propname_filter_baton_t {int receiver_baton; int (* receiver_func ) (int ,char const*,int *,int *) ;int propname; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 int stub1 (int ,char const*,int *,int *) ;
 int * svn_hash_gets (int *,int ) ;
 int svn_hash_sets (int *,int ,int const*) ;

__attribute__((used)) static svn_error_t *
propname_filter_receiver(void *baton,
                         const char *local_abspath,
                         apr_hash_t *props,
                         apr_pool_t *scratch_pool)
{
  struct propname_filter_baton_t *pfb = baton;
  const svn_string_t *propval = svn_hash_gets(props, pfb->propname);

  if (propval)
    {
      props = apr_hash_make(scratch_pool);
      svn_hash_sets(props, pfb->propname, propval);

      SVN_ERR(pfb->receiver_func(pfb->receiver_baton, local_abspath, props,
                                 scratch_pool));
    }

  return SVN_NO_ERROR;
}
