
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_context ;
struct TYPE_3__ {int len; int * val; } ;
typedef TYPE_1__ krb5_addresses ;
typedef int buf ;


 int krb5_print_address (int *,char*,int,size_t*) ;
 int printf (char*,char*) ;

__attribute__((used)) static void
print_addresses (krb5_context context, const krb5_addresses *addrs)
{
    int i;
    char buf[256];
    size_t len;

    for (i = 0; i < addrs->len; ++i) {
 krb5_print_address (&addrs->val[i], buf, sizeof(buf), &len);
 printf ("%s\n", buf);
    }
}
