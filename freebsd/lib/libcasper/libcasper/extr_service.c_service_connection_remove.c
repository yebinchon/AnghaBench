
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_connection {scalar_t__ sc_magic; int sc_chan; int sc_limits; } ;
struct service {scalar_t__ s_magic; int s_connections; } ;


 scalar_t__ SERVICE_CONNECTION_MAGIC ;
 scalar_t__ SERVICE_MAGIC ;
 int TAILQ_REMOVE (int *,struct service_connection*,int ) ;
 int assert (int) ;
 int cap_close (int ) ;
 int free (struct service_connection*) ;
 int nvlist_destroy (int ) ;
 int sc_next ;

void
service_connection_remove(struct service *service,
    struct service_connection *sconn)
{

 assert(service->s_magic == SERVICE_MAGIC);
 assert(sconn->sc_magic == SERVICE_CONNECTION_MAGIC);

 TAILQ_REMOVE(&service->s_connections, sconn, sc_next);
 sconn->sc_magic = 0;
 nvlist_destroy(sconn->sc_limits);
 cap_close(sconn->sc_chan);
 free(sconn);
}
