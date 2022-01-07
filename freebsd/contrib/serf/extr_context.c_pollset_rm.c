
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pollset; } ;
typedef TYPE_1__ serf_pollset_t ;
typedef int apr_status_t ;
struct TYPE_6__ {void* client_data; } ;
typedef TYPE_2__ apr_pollfd_t ;


 int apr_pollset_remove (int ,TYPE_2__*) ;

__attribute__((used)) static apr_status_t pollset_rm(void *user_baton,
                               apr_pollfd_t *pfd,
                               void *serf_baton)
{
    serf_pollset_t *s = (serf_pollset_t*)user_baton;
    pfd->client_data = serf_baton;
    return apr_pollset_remove(s->pollset, pfd);
}
