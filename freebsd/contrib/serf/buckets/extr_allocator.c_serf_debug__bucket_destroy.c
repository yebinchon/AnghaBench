
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int track_state_t ;
struct TYPE_12__ {TYPE_1__* allocator; } ;
typedef TYPE_2__ serf_bucket_t ;
struct TYPE_13__ {scalar_t__ last; } ;
typedef TYPE_3__ read_status_t ;
struct TYPE_11__ {int * track; } ;


 scalar_t__ APR_EOF ;
 scalar_t__ SERF_BUCKET_IS_BARRIER (TYPE_2__ const*) ;
 scalar_t__ SERF_BUCKET_IS_SOCKET (TYPE_2__ const*) ;
 scalar_t__ SERF_BUCKET_IS_SSL_DECRYPT (TYPE_2__ const*) ;
 scalar_t__ SERF_BUCKET_IS_SSL_ENCRYPT (TYPE_2__ const*) ;
 int abort () ;
 TYPE_3__* find_read_status (int *,TYPE_2__ const*,int ) ;

void serf_debug__bucket_destroy(const serf_bucket_t *bucket)
{
}
