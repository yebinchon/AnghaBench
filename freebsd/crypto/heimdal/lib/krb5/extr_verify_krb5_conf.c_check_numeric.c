
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;


 long LONG_MAX ;
 long LONG_MIN ;
 scalar_t__ errno ;
 int krb5_warnx (int ,char*,char const*,char*) ;
 long strtol (char*,char**,int ) ;

__attribute__((used)) static int
check_numeric(krb5_context context, const char *path, char *data)
{
    long v;
    char *end;
    v = strtol(data, &end, 0);

    if ((v == LONG_MIN || v == LONG_MAX) && errno != 0) {
 krb5_warnx(context, "%s: over/under flow for \"%s\"",
     path, data);
 return 1;
    }
    if(*end != '\0') {
 krb5_warnx(context, "%s: failed to parse \"%s\" as a number",
     path, data);
 return 1;
    }
    return 0;
}
