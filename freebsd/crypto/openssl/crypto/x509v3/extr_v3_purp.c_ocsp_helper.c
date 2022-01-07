
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_PURPOSE ;
typedef int X509 ;


 int check_ca (int const*) ;

__attribute__((used)) static int ocsp_helper(const X509_PURPOSE *xp, const X509 *x, int ca)
{




    if (ca)
        return check_ca(x);

    return 1;
}
