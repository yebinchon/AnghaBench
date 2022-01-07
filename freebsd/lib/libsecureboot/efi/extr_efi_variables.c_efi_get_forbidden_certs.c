
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_x509_certificate ;


 int * efi_get_certs (char*,size_t*) ;

br_x509_certificate*
efi_get_forbidden_certs(size_t *count)
{
 return (efi_get_certs("dbx", count));
}
