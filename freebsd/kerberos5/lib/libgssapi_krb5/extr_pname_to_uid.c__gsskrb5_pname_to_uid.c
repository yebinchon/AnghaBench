
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int pw_uid; } ;
typedef int lname ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_const_principal ;
typedef int gss_name_t ;
typedef int gss_OID ;
typedef int buf ;
typedef scalar_t__ OM_uint32 ;


 int ERANGE ;
 int GSSAPI_KRB5_INIT (int *) ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 int MAXLOGNAME ;
 int free (char*) ;
 int getpwnam_r (char*,struct passwd*,char*,size_t,struct passwd**) ;
 scalar_t__ krb5_aname_to_localname (int ,int ,int,char*) ;
 char* malloc (size_t) ;

OM_uint32
_gsskrb5_pname_to_uid(OM_uint32 *minor_status, const gss_name_t pname,
    const gss_OID mech, uid_t *uidp)
{
 krb5_context context;
 krb5_const_principal name = (krb5_const_principal) pname;
 krb5_error_code kret;
 char lname[MAXLOGNAME + 1], buf[1024], *bufp;
 struct passwd pwd, *pw;
 size_t buflen;
 int error;
 OM_uint32 ret;
 static size_t buflen_hint = 1024;

 GSSAPI_KRB5_INIT (&context);

 kret = krb5_aname_to_localname(context, name, sizeof(lname), lname);
 if (kret) {
  *minor_status = kret;
  return (GSS_S_FAILURE);
 }

 *minor_status = 0;
 buflen = buflen_hint;
 for (;;) {
  pw = ((void*)0);
  bufp = buf;
  if (buflen > sizeof(buf))
   bufp = malloc(buflen);
  if (bufp == ((void*)0))
   break;
  error = getpwnam_r(lname, &pwd, bufp, buflen, &pw);
  if (error != ERANGE)
   break;
  if (buflen > sizeof(buf))
   free(bufp);
  buflen += 1024;
  if (buflen > buflen_hint)
   buflen_hint = buflen;
 }
 if (pw) {
  *uidp = pw->pw_uid;
  ret = GSS_S_COMPLETE;
 } else {
  ret = GSS_S_FAILURE;
 }
 if (bufp != ((void*)0) && buflen > sizeof(buf))
  free(bufp);
 return (ret);
}
