
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_connection {scalar_t__ sc_magic; } ;
struct service {scalar_t__ s_magic; int s_connections; } ;


 scalar_t__ SERVICE_CONNECTION_MAGIC ;
 scalar_t__ SERVICE_MAGIC ;
 struct service_connection* TAILQ_FIRST (int *) ;
 int assert (int) ;

struct service_connection *
service_connection_first(struct service *service)
{
 struct service_connection *sconn;

 assert(service->s_magic == SERVICE_MAGIC);

 sconn = TAILQ_FIRST(&service->s_connections);
 assert(sconn == ((void*)0) ||
     sconn->sc_magic == SERVICE_CONNECTION_MAGIC);
 return (sconn);
}
