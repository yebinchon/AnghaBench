
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;


 int strlen (char const*) ;
 int truncated_addr (int ,char const*,int,int) ;

__attribute__((used)) static void
check_truncation(krb5_context context, const char *addr)
{
    int i, len = strlen(addr);

    truncated_addr(context, addr, len, len);

    for (i = 0; i < len; i++)
 truncated_addr(context, addr, i, len);
}
