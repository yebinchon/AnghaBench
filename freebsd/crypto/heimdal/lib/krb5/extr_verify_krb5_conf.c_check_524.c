
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;


 int krb5_warnx (int ,char*,char const*,char*) ;
 scalar_t__ strcasecmp (char*,char*) ;

__attribute__((used)) static int
check_524(krb5_context context, const char *path, char *data)
{
    if(strcasecmp(data, "yes") == 0 ||
       strcasecmp(data, "no") == 0 ||
       strcasecmp(data, "2b") == 0 ||
       strcasecmp(data, "local") == 0)
 return 0;

    krb5_warnx(context, "%s: didn't contain a valid option `%s'",
        path, data);
    return 1;
}
