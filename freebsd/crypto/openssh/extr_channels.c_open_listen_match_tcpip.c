
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
struct permission {scalar_t__ listen_port; char* listen_host; int * host_to_connect; } ;


 char* channel_rfwd_bind_host (char*) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int
open_listen_match_tcpip(struct permission *allowed_open,
    const char *requestedhost, u_short requestedport, int translate)
{
 const char *allowed_host;

 if (allowed_open->host_to_connect == ((void*)0))
  return 0;
 if (allowed_open->listen_port != requestedport)
  return 0;
 if (!translate && allowed_open->listen_host == ((void*)0) &&
     requestedhost == ((void*)0))
  return 1;
 allowed_host = translate ?
     channel_rfwd_bind_host(allowed_open->listen_host) :
     allowed_open->listen_host;
 if (allowed_host == ((void*)0) || requestedhost == ((void*)0) ||
     strcmp(allowed_host, requestedhost) != 0)
  return 0;
 return 1;
}
