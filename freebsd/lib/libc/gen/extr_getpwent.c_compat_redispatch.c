
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char const* uid_t ;
struct passwd {char const* pw_uid; int pw_name; } ;
struct compat_state {int template; int exclude; } ;
struct TYPE_6__ {int member_1; int * member_0; } ;
typedef TYPE_1__ ns_src ;
struct TYPE_7__ {void* mdata; int * member_2; int * member_1; int * member_0; } ;
typedef TYPE_2__ ns_dtab ;
typedef enum nss_lookup_type { ____Placeholder_nss_lookup_type } nss_lookup_type ;


 int ERANGE ;
 int NSDB_PASSWD_COMPAT ;
 int * const NSSRC_DNS ;

 int NS_NOTFOUND ;
 int NS_RETURN ;

 int NS_UNAVAIL ;
 int __pw_initpwd (struct passwd*) ;
 int _nsdispatch (void**,TYPE_2__*,int ,char*,TYPE_1__ const*,...) ;
 scalar_t__ compat_is_excluded (int ,int ) ;
 int compat_use_template (struct passwd*,int *,char*,size_t) ;
 int * dns_passwd ;
 int * nis_passwd ;
 int nitems (TYPE_2__*) ;



 int strcmp (char const*,int ) ;

__attribute__((used)) static int
compat_redispatch(struct compat_state *st, enum nss_lookup_type how,
    enum nss_lookup_type lookup_how, const char *name, const char *lookup_name,
    uid_t uid, struct passwd *pwd, char *buffer, size_t bufsize, int *errnop)
{
 static const ns_src compatsrc[] = {



  { ((void*)0), 0 }
 };
 ns_dtab dtab[] = {






  { ((void*)0), ((void*)0), ((void*)0) }
 };
 void *discard;
 int e, i, rv;

 for (i = 0; i < (int)(nitems(dtab) - 1); i++)
  dtab[i].mdata = (void *)lookup_how;
more:
 __pw_initpwd(pwd);
 switch (lookup_how) {
 case 130:
  rv = _nsdispatch(&discard, dtab, NSDB_PASSWD_COMPAT,
      "getpwent_r", compatsrc, pwd, buffer, bufsize,
      errnop);
  break;
 case 129:
  rv = _nsdispatch(&discard, dtab, NSDB_PASSWD_COMPAT,
      "getpwuid_r", compatsrc, uid, pwd, buffer,
      bufsize, errnop);
  break;
 case 128:
  rv = _nsdispatch(&discard, dtab, NSDB_PASSWD_COMPAT,
      "getpwnam_r", compatsrc, lookup_name, pwd, buffer,
      bufsize, errnop);
  break;
 default:
  return (NS_UNAVAIL);
 }
 if (rv != 131)
  return (rv);
 if (compat_is_excluded(pwd->pw_name, st->exclude)) {
  if (how == 130)
   goto more;
  return (NS_NOTFOUND);
 }
 e = compat_use_template(pwd, &st->template, buffer, bufsize);
 if (e != 0) {
  *errnop = e;
  if (e == ERANGE)
   return (NS_RETURN);
  else
   return (NS_UNAVAIL);
 }
 switch (how) {
 case 128:
  if (strcmp(name, pwd->pw_name) != 0)
   return (NS_NOTFOUND);
  break;
 case 129:
  if (uid != pwd->pw_uid)
   return (NS_NOTFOUND);
  break;
 default:
  break;
 }
 return (131);
}
