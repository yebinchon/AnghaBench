
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_enctype ;
typedef int krb5_context ;


 int ENOMEM ;
 int ETYPE_NULL ;
 int N_ (char*,char*) ;
 int krb5_config_free_strings (char**) ;
 char** krb5_config_get_strings (int ,int *,char*,char const*,int *) ;
 scalar_t__ krb5_enctype_valid (int ,int ) ;
 int krb5_set_error_message (int ,int ,int ) ;
 scalar_t__ krb5_string_to_enctype (int ,char*,int *) ;
 int * malloc (int) ;

__attribute__((used)) static krb5_error_code
set_etypes (krb5_context context,
     const char *name,
     krb5_enctype **ret_enctypes)
{
    char **etypes_str;
    krb5_enctype *etypes = ((void*)0);

    etypes_str = krb5_config_get_strings(context, ((void*)0), "libdefaults",
      name, ((void*)0));
    if(etypes_str){
 int i, j, k;
 for(i = 0; etypes_str[i]; i++);
 etypes = malloc((i+1) * sizeof(*etypes));
 if (etypes == ((void*)0)) {
     krb5_config_free_strings (etypes_str);
     krb5_set_error_message (context, ENOMEM, N_("malloc: out of memory", ""));
     return ENOMEM;
 }
 for(j = 0, k = 0; j < i; j++) {
     krb5_enctype e;
     if(krb5_string_to_enctype(context, etypes_str[j], &e) != 0)
  continue;
     if (krb5_enctype_valid(context, e) != 0)
  continue;
     etypes[k++] = e;
 }
 etypes[k] = ETYPE_NULL;
 krb5_config_free_strings(etypes_str);
    }
    *ret_enctypes = etypes;
    return 0;
}
