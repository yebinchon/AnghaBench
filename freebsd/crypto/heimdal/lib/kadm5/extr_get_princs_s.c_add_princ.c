
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct foreach_data {char** princs; int count; } ;
typedef int krb5_error_code ;


 int ENOMEM ;
 char** realloc (char**,int) ;

__attribute__((used)) static krb5_error_code
add_princ(struct foreach_data *d, char *princ)
{
    char **tmp;
    tmp = realloc(d->princs, (d->count + 1) * sizeof(*tmp));
    if(tmp == ((void*)0))
 return ENOMEM;
    d->princs = tmp;
    d->princs[d->count++] = princ;
    return 0;
}
