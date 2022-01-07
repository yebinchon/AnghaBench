
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_file {struct ks_file* fn; int certs; } ;
typedef int hx509_certs ;


 int free (struct ks_file*) ;
 int hx509_certs_free (int *) ;

__attribute__((used)) static int
file_free(hx509_certs certs, void *data)
{
    struct ks_file *ksf = data;
    hx509_certs_free(&ksf->certs);
    free(ksf->fn);
    free(ksf);
    return 0;
}
