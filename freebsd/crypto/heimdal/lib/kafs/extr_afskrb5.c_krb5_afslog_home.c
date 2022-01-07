
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_const_realm ;
typedef int krb5_ccache ;


 int getuid () ;
 int krb5_afslog_uid_home (int ,int ,char const*,int ,int ,char const*) ;

krb5_error_code
krb5_afslog_home(krb5_context context,
   krb5_ccache id,
   const char *cell,
   krb5_const_realm realm,
   const char *homedir)
{
    return krb5_afslog_uid_home (context, id, cell, realm, getuid(), homedir);
}
