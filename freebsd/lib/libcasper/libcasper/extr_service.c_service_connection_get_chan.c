
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_connection {scalar_t__ sc_magic; int * sc_chan; } ;
typedef int cap_channel_t ;


 scalar_t__ SERVICE_CONNECTION_MAGIC ;
 int assert (int) ;

cap_channel_t *
service_connection_get_chan(const struct service_connection *sconn)
{

 assert(sconn->sc_magic == SERVICE_CONNECTION_MAGIC);

 return (sconn->sc_chan);
}
