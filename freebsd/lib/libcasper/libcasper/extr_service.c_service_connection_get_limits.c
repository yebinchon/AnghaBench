
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_connection {scalar_t__ sc_magic; int const* sc_limits; } ;
typedef int nvlist_t ;


 scalar_t__ SERVICE_CONNECTION_MAGIC ;
 int assert (int) ;

const nvlist_t *
service_connection_get_limits(const struct service_connection *sconn)
{

 assert(sconn->sc_magic == SERVICE_CONNECTION_MAGIC);

 return (sconn->sc_limits);
}
