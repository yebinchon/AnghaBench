
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_certs ;


 int free (void*) ;

__attribute__((used)) static int
dir_free(hx509_certs certs, void *data)
{
    free(data);
    return 0;
}
