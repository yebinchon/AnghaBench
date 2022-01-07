
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;


 int krb5_warnx (int ,char*,char const*,char*) ;
 int parse_bytes (char*,int *) ;

__attribute__((used)) static int
check_bytes(krb5_context context, const char *path, char *data)
{
    if(parse_bytes(data, ((void*)0)) == -1) {
 krb5_warnx(context, "%s: failed to parse \"%s\" as size", path, data);
 return 1;
    }
    return 0;
}
