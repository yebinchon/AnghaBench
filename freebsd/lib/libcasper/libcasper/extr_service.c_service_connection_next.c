
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_connection {scalar_t__ sc_magic; } ;


 scalar_t__ SERVICE_CONNECTION_MAGIC ;
 struct service_connection* TAILQ_NEXT (struct service_connection*,int ) ;
 int assert (int) ;
 int sc_next ;

struct service_connection *
service_connection_next(struct service_connection *sconn)
{

 assert(sconn->sc_magic == SERVICE_CONNECTION_MAGIC);

 sconn = TAILQ_NEXT(sconn, sc_next);
 assert(sconn == ((void*)0) ||
     sconn->sc_magic == SERVICE_CONNECTION_MAGIC);
 return (sconn);
}
