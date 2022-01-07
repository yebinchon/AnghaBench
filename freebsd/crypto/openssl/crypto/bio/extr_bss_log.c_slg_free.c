
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int xcloselog (int *) ;

__attribute__((used)) static int slg_free(BIO *a)
{
    if (a == ((void*)0))
        return 0;
    xcloselog(a);
    return 1;
}
