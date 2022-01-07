
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int creds_cache; } ;
typedef TYPE_1__ svn_auth_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int apr_hash_clear (int ) ;
 int make_cache_key (char const*,char const*,int *) ;
 int svn_hash_sets (int ,int ,int *) ;

svn_error_t *
svn_auth_forget_credentials(svn_auth_baton_t *auth_baton,
                            const char *cred_kind,
                            const char *realmstring,
                            apr_pool_t *scratch_pool)
{
  SVN_ERR_ASSERT((cred_kind && realmstring) || (!cred_kind && !realmstring));



  if (cred_kind)
    {
      svn_hash_sets(auth_baton->creds_cache,
                    make_cache_key(cred_kind, realmstring, scratch_pool),
                    ((void*)0));
    }
  else
    {
      apr_hash_clear(auth_baton->creds_cache);
    }

  return SVN_NO_ERROR;
}
