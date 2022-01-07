
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kafs_data {char* name; int free_error; int get_error; int get_realm; } ;
typedef int krb5_error_code ;


 int _kafs_realm_of_cell (struct kafs_data*,char const*,char**) ;
 int free_error ;
 int get_error ;
 int get_realm ;

krb5_error_code
krb5_realm_of_cell(const char *cell, char **realm)
{
    struct kafs_data kd;

    kd.name = "krb5";
    kd.get_realm = get_realm;
    kd.get_error = get_error;
    kd.free_error = free_error;
    return _kafs_realm_of_cell(&kd, cell, realm);
}
