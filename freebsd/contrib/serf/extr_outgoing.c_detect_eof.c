
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hit_eof; } ;
typedef TYPE_1__ serf_connection_t ;
typedef int serf_bucket_t ;
typedef int apr_status_t ;


 int APR_EAGAIN ;

__attribute__((used)) static apr_status_t detect_eof(void *baton, serf_bucket_t *aggregate_bucket)
{
    serf_connection_t *conn = baton;
    conn->hit_eof = 1;
    return APR_EAGAIN;
}
