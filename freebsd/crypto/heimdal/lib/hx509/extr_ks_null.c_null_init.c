
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_lock ;
typedef int hx509_context ;
typedef int hx509_certs ;



__attribute__((used)) static int
null_init(hx509_context context,
   hx509_certs certs, void **data, int flags,
   const char *residue, hx509_lock lock)
{
    *data = ((void*)0);
    return 0;
}
