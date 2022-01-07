
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_lock ;
typedef int hx509_context ;
typedef int hx509_certs ;


 int USE_PEM ;
 int file_init_common (int ,int ,void**,int,char const*,int ,int ) ;

__attribute__((used)) static int
file_init_pem(hx509_context context,
       hx509_certs certs, void **data, int flags,
       const char *residue, hx509_lock lock)
{
    return file_init_common(context, certs, data, flags, residue, lock, USE_PEM);
}
