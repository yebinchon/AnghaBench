
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_status_t ;
typedef int apr_file_t ;
typedef int BIO ;


 scalar_t__ APR_STATUS_IS_EOF (int ) ;
 int apr_file_gets (char*,int,int *) ;
 int * bio_get_data (int *) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int bio_file_gets(BIO *bio, char *in, int inlen)
{
    apr_file_t *file = bio_get_data(bio);
    apr_status_t status;

    status = apr_file_gets(in, inlen, file);

    if (! status) {
        return (int)strlen(in);
    } else if (APR_STATUS_IS_EOF(status)) {
        return 0;
    } else {
        return -1;
    }
}
