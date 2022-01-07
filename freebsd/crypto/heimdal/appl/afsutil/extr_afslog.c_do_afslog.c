
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * context ;
 int * id ;
 int krb5_afslog (int *,int *,char const*,int ) ;
 int krb5_warn (int *,int,char*,char const*) ;
 int realm ;
 scalar_t__ use_krb5 ;

__attribute__((used)) static int
do_afslog(const char *cell)
{
    int k5ret;

    k5ret = 0;
    if (cell == ((void*)0))
 cell = "<default cell>";




    if (k5ret)
 return 1;
    return 0;
}
