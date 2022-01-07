
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_9__ {void* max_access; void* min_access; } ;
typedef TYPE_1__ authz_rights_t ;
typedef int authz_global_rights_t ;
struct TYPE_10__ {int const authn_rights; scalar_t__ has_authn_rights; int user_rights; int const anon_rights; scalar_t__ has_anon_rights; } ;
typedef TYPE_2__ authz_full_t ;


 int AUTHZ_ANONYMOUS_USER ;
 int FALSE ;
 void* authz_access_none ;
 int combine_rights (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int resolve_global_rights (TYPE_1__*,int const*,char const*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int * svn_hash_gets (int ,char const*) ;

svn_boolean_t
svn_authz__get_global_rights(authz_rights_t *rights_p,
                             const authz_full_t *authz,
                             const char *user, const char *repos)
{
  if (!user || 0 == strcmp(user, AUTHZ_ANONYMOUS_USER))
    {

      if (authz->has_anon_rights)
        return resolve_global_rights(rights_p, &authz->anon_rights, repos);
    }
  else
    {

      const authz_global_rights_t *const user_rights =
        svn_hash_gets(authz->user_rights, user);

      if (user_rights)
        {
          svn_boolean_t explicit
            = resolve_global_rights(rights_p, user_rights, repos);


          if (authz->has_authn_rights)
            {
              authz_rights_t authn;
              explicit |= resolve_global_rights(&authn, &authz->authn_rights,
                                                repos);
              combine_rights(rights_p, rights_p, &authn);
            }
          return explicit;
        }


      if (authz->has_authn_rights)
        return resolve_global_rights(rights_p, &authz->authn_rights, repos);
    }


  rights_p->min_access = authz_access_none;
  rights_p->max_access = authz_access_none;
  return FALSE;
}
