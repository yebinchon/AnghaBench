
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_file {int certs; } ;
typedef int hx509_context ;
typedef int hx509_certs ;


 int hx509_certs_end_seq (int ,int ,void*) ;

__attribute__((used)) static int
file_iter_end(hx509_context context,
       hx509_certs certs,
       void *data,
       void *cursor)
{
    struct ks_file *ksf = data;
    return hx509_certs_end_seq(context, ksf->certs, cursor);
}
