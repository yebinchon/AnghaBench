
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sockaddr {int dummy; } ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_data ;
typedef int krb5_auth_context ;


 int context ;
 int krb5_data_free (int *) ;
 scalar_t__ krb5_mk_priv (int ,int ,int *,int *,int *) ;
 scalar_t__ krb5_mk_rep (int ,int ,int *) ;
 int krb5_warn (int ,scalar_t__,char*) ;
 scalar_t__ make_result (int *,int ,char const*) ;
 int send_reply (int,struct sockaddr*,int,int *,int *) ;

__attribute__((used)) static void
reply_priv (krb5_auth_context auth_context,
     int s,
     struct sockaddr *sa,
     int sa_size,
     uint16_t result_code,
     const char *expl)
{
    krb5_error_code ret;
    krb5_data krb_priv_data;
    krb5_data ap_rep_data;
    krb5_data e_data;

    ret = krb5_mk_rep (context,
         auth_context,
         &ap_rep_data);
    if (ret) {
 krb5_warn (context, ret, "Could not even generate error reply");
 return;
    }

    if (make_result(&e_data, result_code, expl))
 return;

    ret = krb5_mk_priv (context,
   auth_context,
   &e_data,
   &krb_priv_data,
   ((void*)0));
    krb5_data_free (&e_data);
    if (ret) {
 krb5_warn (context, ret, "Could not even generate error reply");
 return;
    }
    send_reply (s, sa, sa_size, &ap_rep_data, &krb_priv_data);
    krb5_data_free (&ap_rep_data);
    krb5_data_free (&krb_priv_data);
}
