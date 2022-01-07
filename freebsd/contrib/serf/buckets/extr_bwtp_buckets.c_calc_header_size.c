
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_bucket_t ;
typedef int apr_size_t ;


 int count_size ;
 int serf_bucket_headers_do (int *,int ,int *) ;

__attribute__((used)) static apr_size_t calc_header_size(serf_bucket_t *hdrs)
{
    apr_size_t size = 0;

    serf_bucket_headers_do(hdrs, count_size, &size);

    return size;
}
