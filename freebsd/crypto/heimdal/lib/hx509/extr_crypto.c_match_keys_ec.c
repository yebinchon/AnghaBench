
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_private_key ;
typedef int hx509_cert ;



__attribute__((used)) static int
match_keys_ec(hx509_cert c, hx509_private_key private_key)
{
    return 1;
}
