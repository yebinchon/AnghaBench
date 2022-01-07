
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_connection {int sc_magic; int * sc_chan; int * sc_limits; } ;
struct service {scalar_t__ s_magic; int s_connections; } ;
typedef int nvlist_t ;


 int SERVICE_CONNECTION_MAGIC ;
 scalar_t__ SERVICE_MAGIC ;
 int TAILQ_INSERT_TAIL (int *,struct service_connection*,int ) ;
 int assert (int) ;
 int cap_unwrap (int *,int *) ;
 int * cap_wrap (int,int ) ;
 int errno ;
 int free (struct service_connection*) ;
 struct service_connection* malloc (int) ;
 int * nvlist_clone (int const*) ;
 int sc_next ;
 int service_get_channel_flags (struct service*) ;

struct service_connection *
service_connection_add(struct service *service, int sock,
    const nvlist_t *limits)
{
 struct service_connection *sconn;
 int serrno;

 assert(service->s_magic == SERVICE_MAGIC);

 sconn = malloc(sizeof(*sconn));
 if (sconn == ((void*)0))
  return (((void*)0));
 sconn->sc_chan = cap_wrap(sock,
     service_get_channel_flags(service));
 if (sconn->sc_chan == ((void*)0)) {
  serrno = errno;
  free(sconn);
  errno = serrno;
  return (((void*)0));
 }
 if (limits == ((void*)0)) {
  sconn->sc_limits = ((void*)0);
 } else {
  sconn->sc_limits = nvlist_clone(limits);
  if (sconn->sc_limits == ((void*)0)) {
   serrno = errno;
   (void)cap_unwrap(sconn->sc_chan, ((void*)0));
   free(sconn);
   errno = serrno;
   return (((void*)0));
  }
 }
 sconn->sc_magic = SERVICE_CONNECTION_MAGIC;
 TAILQ_INSERT_TAIL(&service->s_connections, sconn, sc_next);
 return (sconn);
}
