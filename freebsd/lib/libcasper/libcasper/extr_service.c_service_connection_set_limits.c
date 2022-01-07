
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_connection {scalar_t__ sc_magic; int * sc_limits; } ;
typedef int nvlist_t ;


 scalar_t__ SERVICE_CONNECTION_MAGIC ;
 int assert (int) ;
 int nvlist_destroy (int *) ;

void
service_connection_set_limits(struct service_connection *sconn,
    nvlist_t *limits)
{

 assert(sconn->sc_magic == SERVICE_CONNECTION_MAGIC);

 nvlist_destroy(sconn->sc_limits);
 sconn->sc_limits = limits;
}
