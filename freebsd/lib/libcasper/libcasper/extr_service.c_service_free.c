
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_connection {int dummy; } ;
struct service {scalar_t__ s_magic; struct service* s_name; } ;


 scalar_t__ SERVICE_MAGIC ;
 int assert (int) ;
 int free (struct service*) ;
 struct service_connection* service_connection_first (struct service*) ;
 int service_connection_remove (struct service*,struct service_connection*) ;

void
service_free(struct service *service)
{
 struct service_connection *sconn;

 assert(service->s_magic == SERVICE_MAGIC);

 service->s_magic = 0;
 while ((sconn = service_connection_first(service)) != ((void*)0))
  service_connection_remove(service, sconn);
 free(service->s_name);
 free(service);
}
