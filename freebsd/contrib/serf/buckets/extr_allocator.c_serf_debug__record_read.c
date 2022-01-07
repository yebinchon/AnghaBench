
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int track_state_t ;
struct TYPE_8__ {TYPE_1__* allocator; } ;
typedef TYPE_2__ serf_bucket_t ;
struct TYPE_9__ {int last; } ;
typedef TYPE_3__ read_status_t ;
typedef int apr_status_t ;
struct TYPE_7__ {int * track; } ;


 scalar_t__ APR_STATUS_IS_EAGAIN (int ) ;
 int abort () ;
 TYPE_3__* find_read_status (int *,TYPE_2__ const*,int) ;

apr_status_t serf_debug__record_read(
    const serf_bucket_t *bucket,
    apr_status_t status)
{

    return status;
}
