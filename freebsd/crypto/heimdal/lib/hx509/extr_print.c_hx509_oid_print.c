
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_vprint_func ;
typedef int heim_oid ;


 int free (char*) ;
 int hx509_oid_sprint (int const*,char**) ;
 int print_func (int ,void*,char*,char*) ;

void
hx509_oid_print(const heim_oid *oid, hx509_vprint_func func, void *ctx)
{
    char *str;
    hx509_oid_sprint(oid, &str);
    print_func(func, ctx, "%s", str);
    free(str);
}
