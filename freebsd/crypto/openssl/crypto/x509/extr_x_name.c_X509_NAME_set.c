
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_NAME ;


 int * X509_NAME_dup (int *) ;
 int X509_NAME_free (int *) ;

int X509_NAME_set(X509_NAME **xn, X509_NAME *name)
{
    if (*xn == name)
        return *xn != ((void*)0);
    if ((name = X509_NAME_dup(name)) == ((void*)0))
        return 0;
    X509_NAME_free(*xn);
    *xn = name;
    return 1;
}
