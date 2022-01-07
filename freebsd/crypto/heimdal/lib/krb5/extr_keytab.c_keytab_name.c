
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;

__attribute__((used)) static const char *
keytab_name(const char *name, const char **type, size_t *type_len)
{
    const char *residual;

    residual = strchr(name, ':');

    if (residual == ((void*)0) ||
 name[0] == '/'





        ) {

        *type = "FILE";
        *type_len = strlen(*type);
        residual = name;
    } else {
        *type = name;
        *type_len = residual - name;
        residual++;
    }

    return residual;
}
