
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sockaddr {int dummy; } ;
typedef int krb5_realm ;
typedef int * krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_data ;


 int context ;
 int krb5_data_free (int *) ;
 int krb5_free_principal (int ,int *) ;
 scalar_t__ krb5_make_principal (int ,int **,int ,char*,char*,int *) ;
 scalar_t__ krb5_mk_error (int ,scalar_t__,int *,int *,int *,int *,int *,int *,int *) ;
 int krb5_warn (int ,scalar_t__,char*) ;
 scalar_t__ make_result (int *,int ,char const*) ;
 int send_reply (int,struct sockaddr*,int,int *,int *) ;

__attribute__((used)) static void
reply_error (krb5_realm realm,
      int s,
      struct sockaddr *sa,
      int sa_size,
      krb5_error_code error_code,
      uint16_t result_code,
      const char *expl)
{
    krb5_error_code ret;
    krb5_data error_data;
    krb5_data e_data;
    krb5_principal server = ((void*)0);

    if (make_result(&e_data, result_code, expl))
 return;

    if (realm) {
 ret = krb5_make_principal (context, &server, realm,
       "kadmin", "changepw", ((void*)0));
 if (ret) {
     krb5_data_free (&e_data);
     return;
 }
    }

    ret = krb5_mk_error (context,
    error_code,
    ((void*)0),
    &e_data,
    ((void*)0),
    server,
    ((void*)0),
    ((void*)0),
    &error_data);
    if (server)
 krb5_free_principal(context, server);
    krb5_data_free (&e_data);
    if (ret) {
 krb5_warn (context, ret, "Could not even generate error reply");
 return;
    }
    send_reply (s, sa, sa_size, ((void*)0), &error_data);
    krb5_data_free (&error_data);
}
