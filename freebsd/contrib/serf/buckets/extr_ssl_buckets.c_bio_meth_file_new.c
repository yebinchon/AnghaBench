
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_METHOD ;


 int BIO_TYPE_FILE ;
 int * BIO_meth_new (int ,char*) ;
 int BIO_meth_set_create (int *,int ) ;
 int BIO_meth_set_ctrl (int *,int ) ;
 int BIO_meth_set_destroy (int *,int ) ;
 int BIO_meth_set_gets (int *,int ) ;
 int BIO_meth_set_read (int *,int ) ;
 int BIO_meth_set_write (int *,int ) ;
 int bio_bucket_create ;
 int bio_bucket_ctrl ;
 int bio_bucket_destroy ;
 int bio_file_gets ;
 int bio_file_method ;
 int bio_file_read ;
 int bio_file_write ;

__attribute__((used)) static BIO_METHOD *bio_meth_file_new(void)
{
    BIO_METHOD *biom = ((void*)0);
    biom = &bio_file_method;


    return biom;
}
