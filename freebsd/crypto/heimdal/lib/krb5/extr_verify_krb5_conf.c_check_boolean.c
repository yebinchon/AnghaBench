
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;


 int krb5_warnx (int ,char*,char const*,char*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 long strtol (char*,char**,int ) ;

__attribute__((used)) static int
check_boolean(krb5_context context, const char *path, char *data)
{
    long int v;
    char *end;
    if(strcasecmp(data, "yes") == 0 ||
       strcasecmp(data, "true") == 0 ||
       strcasecmp(data, "no") == 0 ||
       strcasecmp(data, "false") == 0)
 return 0;
    v = strtol(data, &end, 0);
    if(*end != '\0') {
 krb5_warnx(context, "%s: failed to parse \"%s\" as a boolean",
     path, data);
 return 1;
    }
    if(v != 0 && v != 1)
 krb5_warnx(context, "%s: numeric value \"%s\" is treated as \"true\"",
     path, data);
    return 0;
}
