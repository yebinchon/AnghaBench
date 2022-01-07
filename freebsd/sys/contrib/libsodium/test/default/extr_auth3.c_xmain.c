
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int a ;
 int c ;
 int crypto_auth_hmacsha256_verify (int ,int ,int,int ) ;
 int key ;
 int printf (char*,int) ;

int
main(void)
{
    printf("%d\n", crypto_auth_hmacsha256_verify(a, c, sizeof c, key));

    return 0;
}
