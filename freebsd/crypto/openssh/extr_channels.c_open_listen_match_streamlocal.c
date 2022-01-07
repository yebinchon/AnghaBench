
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct permission {scalar_t__ listen_port; int * listen_path; int * host_to_connect; } ;


 scalar_t__ PORT_STREAMLOCAL ;
 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static int
open_listen_match_streamlocal(struct permission *allowed_open,
    const char *requestedpath)
{
 if (allowed_open->host_to_connect == ((void*)0))
  return 0;
 if (allowed_open->listen_port != PORT_STREAMLOCAL)
  return 0;
 if (allowed_open->listen_path == ((void*)0) ||
     strcmp(allowed_open->listen_path, requestedpath) != 0)
  return 0;
 return 1;
}
