
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_status_t ;
typedef int apr_size_t ;
typedef int apr_file_t ;
typedef int BIO ;


 scalar_t__ APR_STATUS_IS_EOF (int ) ;
 int SERF_BUCKET_READ_ERROR (int ) ;
 int apr_file_read (int *,char*,int*) ;
 int * bio_get_data (int *) ;

__attribute__((used)) static int bio_file_read(BIO *bio, char *in, int inlen)
{
    apr_file_t *file = bio_get_data(bio);
    apr_status_t status;
    apr_size_t len;

    len = inlen;
    status = apr_file_read(file, in, &len);

    if (!SERF_BUCKET_READ_ERROR(status)) {

        if (APR_STATUS_IS_EOF(status)) {
            return -1;
        } else {
            return len;
        }
    }

    return -1;
}
