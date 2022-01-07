
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_boolean ;


 int sscanf (char const*,char*,unsigned int*) ;

__attribute__((used)) static krb5_boolean
match_appl_version(const void *data, const char *appl_version)
{
    unsigned minor;
    if(sscanf(appl_version, "KADM0.%u", &minor) != 1)
 return 0;

    *(unsigned*)(intptr_t)data = minor;
    return 1;
}
