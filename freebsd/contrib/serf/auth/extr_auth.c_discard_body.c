
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_bucket_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_size_t ;


 int SERF_READ_ALL_AVAIL ;
 scalar_t__ serf_bucket_read (int *,int ,char const**,int *) ;

__attribute__((used)) static apr_status_t discard_body(serf_bucket_t *response)
{
    apr_status_t status;
    const char *data;
    apr_size_t len;

    while (1) {
        status = serf_bucket_read(response, SERF_READ_ALL_AVAIL, &data, &len);

        if (status) {
            return status;
        }


    }
}
