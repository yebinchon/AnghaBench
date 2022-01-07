
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_4__ {int len; int * val; } ;
typedef TYPE_1__ krb5_addresses ;


 int abort () ;
 char* ecalloc (int,size_t) ;
 int free (char*) ;
 int krb5_err (int ,int,scalar_t__,char*,...) ;
 int krb5_free_addresses (int ,TYPE_1__*) ;
 scalar_t__ krb5_parse_address (int ,char const*,TYPE_1__*) ;
 int krb5_print_address (int *,char*,size_t,size_t*) ;
 int printf (char*,char*,int,int,...) ;
 size_t strlen (char*) ;

__attribute__((used)) static void
truncated_addr(krb5_context context, const char *addr,
        size_t truncate_len, size_t outlen)
{
    krb5_addresses addresses;
    krb5_error_code ret;
    char *buf;
    size_t len;

    buf = ecalloc(1, outlen + 1);

    ret = krb5_parse_address(context, addr, &addresses);
    if (ret)
 krb5_err(context, 1, ret, "krb5_parse_address");

    if (addresses.len != 1)
 krb5_err(context, 1, ret, "addresses should be one");

    krb5_print_address(&addresses.val[0], buf, truncate_len, &len);





    if (truncate_len > strlen(buf) + 1)
 krb5_err(context, 1, ret, "%s truncate_len %d larger then strlen %d source %s",
   buf, (int)truncate_len, (int)strlen(buf), addr);

    if (outlen != len)
 krb5_err(context, 1, ret, "%s: outlen %d != len %d",
   buf, (int)outlen, (int)strlen(buf));

    krb5_print_address(&addresses.val[0], buf, outlen + 1, &len);





    if (len != outlen)
 abort();
    if (strlen(buf) != len)
 abort();

    krb5_free_addresses(context, &addresses);
    free(buf);
}
