
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_connection {scalar_t__ sc_magic; int sc_chan; } ;


 scalar_t__ SERVICE_CONNECTION_MAGIC ;
 int assert (int) ;
 int cap_sock (int ) ;

int
service_connection_get_sock(const struct service_connection *sconn)
{

 assert(sconn->sc_magic == SERVICE_CONNECTION_MAGIC);

 return (cap_sock(sconn->sc_chan));
}
