
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ret_enctypes ;
typedef int krb5_error_code ;
typedef scalar_t__ krb5_enctype ;
typedef int krb5_context ;


 int ENOMEM ;
 int N_ (char*,char*) ;
 int krb5_set_error_message (int ,int ,int ) ;
 scalar_t__* malloc (int) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static krb5_error_code
copy_etypes (krb5_context context,
      krb5_enctype *enctypes,
      krb5_enctype **ret_enctypes)
{
    unsigned int i;

    for (i = 0; enctypes[i]; i++)
 ;
    i++;

    *ret_enctypes = malloc(sizeof(ret_enctypes[0]) * i);
    if (*ret_enctypes == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM,
          N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    memcpy(*ret_enctypes, enctypes, sizeof(ret_enctypes[0]) * i);
    return 0;
}
