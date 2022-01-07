
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef int * krb5_principal ;
typedef int krb5_context ;
typedef int krb5_ccache ;


 int KRB5_DEFAULT_CCROOT ;
 int PAM_LOG (char*,...) ;
 int asprintf (char**,char*,char*,unsigned long,...) ;
 long errno ;
 int free (char*) ;
 char* getenv (char*) ;
 scalar_t__ geteuid () ;
 scalar_t__ getuid () ;
 int krb5_cc_close (int ,int ) ;
 long krb5_cc_get_principal (int ,int ,int **) ;
 long krb5_cc_resolve (int ,char*,int *) ;
 int krb5_free_error_message (int ,char const*) ;
 int krb5_free_principal (int ,int *) ;
 char* krb5_get_error_message (int ,long) ;
 long krb5_make_principal (int ,int **,int *,char const*,int *) ;
 long krb5_parse_name (int ,char*,int **) ;
 long krb5_unparse_name (int ,int *,char**) ;
 long seteuid (scalar_t__) ;
 scalar_t__ strcmp (char const*,int ) ;
 char* strdup (char*) ;
 char* strrchr (char*,char) ;
 int superuser ;

__attribute__((used)) static long
get_su_principal(krb5_context context, const char *target_user, const char *current_user,
    char **su_principal_name, krb5_principal *su_principal)
{
 krb5_principal default_principal;
 krb5_ccache ccache;
 char *principal_name, *ccname, *p;
 long rv;
 uid_t euid, ruid;

 *su_principal = ((void*)0);
 default_principal = ((void*)0);




 ruid = getuid();
 euid = geteuid();
 rv = seteuid(ruid);
 if (rv != 0)
  return (errno);
 p = getenv("KRB5CCNAME");
 if (p != ((void*)0))
  ccname = strdup(p);
 else
  (void)asprintf(&ccname, "%s%lu", KRB5_DEFAULT_CCROOT, (unsigned long)ruid);
 if (ccname == ((void*)0))
  return (errno);
 rv = krb5_cc_resolve(context, ccname, &ccache);
 free(ccname);
 if (rv == 0) {
  rv = krb5_cc_get_principal(context, ccache, &default_principal);
  krb5_cc_close(context, ccache);
  if (rv != 0)
   default_principal = ((void*)0);
 }
 rv = seteuid(euid);
 if (rv != 0)
  return (errno);
 if (default_principal == ((void*)0)) {
  rv = krb5_make_principal(context, &default_principal, ((void*)0), current_user, ((void*)0));
  if (rv != 0) {
   PAM_LOG("Could not determine default principal name.");
   return (rv);
  }
 }




 rv = krb5_unparse_name(context, default_principal, &principal_name);
 krb5_free_principal(context, default_principal);
 if (rv != 0) {
  const char *msg = krb5_get_error_message(context, rv);
  PAM_LOG("krb5_unparse_name: %s", msg);
  krb5_free_error_message(context, msg);
  return (rv);
 }
 PAM_LOG("Default principal name: %s", principal_name);
 if (strcmp(target_user, superuser) == 0) {
  p = strrchr(principal_name, '@');
  if (p == ((void*)0)) {
   PAM_LOG("malformed principal name `%s'", principal_name);
   free(principal_name);
   return (rv);
  }
  *p++ = '\0';
  *su_principal_name = ((void*)0);
  (void)asprintf(su_principal_name, "%s/%s@%s", principal_name, superuser, p);
  free(principal_name);
 } else
  *su_principal_name = principal_name;

 if (*su_principal_name == ((void*)0))
  return (errno);
 rv = krb5_parse_name(context, *su_principal_name, &default_principal);
 if (rv != 0) {
  const char *msg = krb5_get_error_message(context, rv);
  PAM_LOG("krb5_parse_name `%s': %s", *su_principal_name, msg);
  krb5_free_error_message(context, msg);
  free(*su_principal_name);
  return (rv);
 }
 PAM_LOG("Target principal name: %s", *su_principal_name);
 *su_principal = default_principal;
 return (0);
}
