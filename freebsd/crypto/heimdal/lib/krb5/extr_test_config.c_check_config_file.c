
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_errx (int ,int,char*,...) ;
 int krb5_free_config_files (char**) ;
 scalar_t__ krb5_get_default_config_files (char***) ;
 scalar_t__ krb5_prepend_config_files (char*,int *,char***) ;
 scalar_t__ krb5_prepend_config_files_default (char*,char***) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
check_config_file(krb5_context context, char *filelist, char **res, int def)
{
    krb5_error_code ret;
    char **pp;
    int i;

    pp = ((void*)0);

    if (def)
 ret = krb5_prepend_config_files_default(filelist, &pp);
    else
 ret = krb5_prepend_config_files(filelist, ((void*)0), &pp);

    if (ret)
 krb5_err(context, 1, ret, "prepend_config_files");

    for (i = 0; res[i] && pp[i]; i++)
 if (strcmp(pp[i], res[i]) != 0)
     krb5_errx(context, 1, "'%s' != '%s'", pp[i], res[i]);

    if (res[i] != ((void*)0))
 krb5_errx(context, 1, "pp ended before res list");

    if (def) {
 char **deflist;
 int j;

 ret = krb5_get_default_config_files(&deflist);
 if (ret)
     krb5_err(context, 1, ret, "get_default_config_files");

 for (j = 0 ; pp[i] && deflist[j]; i++, j++)
     if (strcmp(pp[i], deflist[j]) != 0)
  krb5_errx(context, 1, "'%s' != '%s'", pp[i], deflist[j]);

 if (deflist[j] != ((void*)0))
     krb5_errx(context, 1, "pp ended before def list");
 krb5_free_config_files(deflist);
    }

    if (pp[i] != ((void*)0))
 krb5_errx(context, 1, "pp ended after res (and def) list");

    krb5_free_config_files(pp);

    return 0;
}
