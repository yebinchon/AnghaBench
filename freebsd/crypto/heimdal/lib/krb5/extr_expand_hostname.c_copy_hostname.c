
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_context ;


 int ENOMEM ;
 int N_ (char*,char*) ;
 int krb5_set_error_message (int ,int ,int ) ;
 char* strdup (char const*) ;
 int strlwr (char*) ;

__attribute__((used)) static krb5_error_code
copy_hostname(krb5_context context,
       const char *orig_hostname,
       char **new_hostname)
{
    *new_hostname = strdup (orig_hostname);
    if (*new_hostname == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM,
          N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    strlwr (*new_hostname);
    return 0;
}
