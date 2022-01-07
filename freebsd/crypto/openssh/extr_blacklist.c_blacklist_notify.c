
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blacklist_r (int *,int,int ,char const*) ;
 int * blstate ;
 scalar_t__ packet_connection_is_on_socket () ;
 int packet_get_connection_in () ;

void
blacklist_notify(int action, const char *msg)
{

 if (blstate != ((void*)0) && packet_connection_is_on_socket())
  (void)blacklist_r(blstate, action,
  packet_get_connection_in(), msg);
}
