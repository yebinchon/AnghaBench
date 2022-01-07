
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;


 int krb5_warnx (int ,char*,char const*) ;
 scalar_t__ warn_mit_syntax_flag ;

__attribute__((used)) static int
mit_entry(krb5_context context, const char *path, char *data)
{
    if (warn_mit_syntax_flag)
 krb5_warnx(context, "%s is only used by MIT Kerberos", path);
    return 0;
}
