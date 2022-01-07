
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;
typedef int apr_file_t ;
typedef int BIO ;


 int BIO_clear_retry_flags (int *) ;
 int apr_file_write (int *,char const*,int*) ;
 int * bio_get_data (int *) ;

__attribute__((used)) static int bio_file_write(BIO *bio, const char *in, int inl)
{
    apr_file_t *file = bio_get_data(bio);
    apr_size_t nbytes;

    BIO_clear_retry_flags(bio);

    nbytes = inl;
    apr_file_write(file, in, &nbytes);

    return nbytes;
}
