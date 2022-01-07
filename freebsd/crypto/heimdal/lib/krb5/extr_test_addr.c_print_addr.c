
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_4__ {int len; int * val; } ;
typedef TYPE_1__ krb5_addresses ;
typedef int buf2 ;
typedef int buf ;


 int krb5_err (int ,int,scalar_t__,char*,...) ;
 int krb5_free_addresses (int ,TYPE_1__*) ;
 scalar_t__ krb5_parse_address (int ,char const*,TYPE_1__*) ;
 int krb5_print_address (int *,char*,int,size_t*) ;
 int printf (char*,int,char*,int,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
print_addr(krb5_context context, const char *addr)
{
    krb5_addresses addresses;
    krb5_error_code ret;
    char buf[38];
    char buf2[1000];
    size_t len;
    int i;

    ret = krb5_parse_address(context, addr, &addresses);
    if (ret)
 krb5_err(context, 1, ret, "krb5_parse_address");

    if (addresses.len < 1)
 krb5_err(context, 1, ret, "too few addresses");

    for (i = 0; i < addresses.len; i++) {
 krb5_print_address(&addresses.val[i], buf, sizeof(buf), &len);



 if (strlen(buf) > sizeof(buf))
     krb5_err(context, 1, ret, "len %d larger then buf %d",
       (int)strlen(buf), (int)sizeof(buf));
 krb5_print_address(&addresses.val[i], buf2, sizeof(buf2), &len);



 if (strlen(buf2) > sizeof(buf2))
     krb5_err(context, 1, ret, "len %d larger then buf %d",
       (int)strlen(buf2), (int)sizeof(buf2));

    }
    krb5_free_addresses(context, &addresses);

}
