
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct permission {int port_to_connect; int * host_to_connect; } ;


 char const* FWD_PERMIT_ANY_HOST ;
 int FWD_PERMIT_ANY_PORT ;
 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static int
open_match(struct permission *allowed_open, const char *requestedhost,
    int requestedport)
{
 if (allowed_open->host_to_connect == ((void*)0))
  return 0;
 if (allowed_open->port_to_connect != FWD_PERMIT_ANY_PORT &&
     allowed_open->port_to_connect != requestedport)
  return 0;
 if (strcmp(allowed_open->host_to_connect, FWD_PERMIT_ANY_HOST) != 0 &&
     strcmp(allowed_open->host_to_connect, requestedhost) != 0)
  return 0;
 return 1;
}
