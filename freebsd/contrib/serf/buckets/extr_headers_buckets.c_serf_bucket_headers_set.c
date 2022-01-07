
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_bucket_t ;


 int serf_bucket_headers_setx (int *,char const*,int ,int ,char const*,int ,int) ;
 int strlen (char const*) ;

void serf_bucket_headers_set(
    serf_bucket_t *headers_bucket,
    const char *header,
    const char *value)
{
    serf_bucket_headers_setx(headers_bucket,
                             header, strlen(header), 0,
                             value, strlen(value), 1);
}
