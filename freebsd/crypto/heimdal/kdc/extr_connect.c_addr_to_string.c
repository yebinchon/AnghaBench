
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_family; } ;
typedef int krb5_context ;
typedef int krb5_address ;


 int krb5_free_address (int ,int *) ;
 scalar_t__ krb5_print_address (int *,char*,size_t,size_t*) ;
 scalar_t__ krb5_sockaddr2address (int ,struct sockaddr*,int *) ;
 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static void
addr_to_string(krb5_context context,
        struct sockaddr *addr, size_t addr_len, char *str, size_t len)
{
    krb5_address a;
    if(krb5_sockaddr2address(context, addr, &a) == 0) {
 if(krb5_print_address(&a, str, len, &len) == 0) {
     krb5_free_address(context, &a);
     return;
 }
 krb5_free_address(context, &a);
    }
    snprintf(str, len, "<family=%d>", addr->sa_family);
}
