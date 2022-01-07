
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service {int dummy; } ;
struct casper_service {struct service* cs_service; } ;
typedef int nvlist_t ;


 int _exit (int) ;
 int nvlist_destroy (int *) ;
 int nvlist_exists_string (int *,char*) ;
 char* nvlist_get_string (int *,char*) ;
 int * nvlist_recv (int,int ) ;
 int nvlist_take_descriptor (int *,char*) ;
 struct casper_service* service_find (char const*) ;
 int service_start (struct service*,int,int) ;

void
service_execute(int chanfd)
{
 struct casper_service *casserv;
 struct service *service;
 const char *servname;
 nvlist_t *nvl;
 int procfd;

 nvl = nvlist_recv(chanfd, 0);
 if (nvl == ((void*)0))
  _exit(1);
 if (!nvlist_exists_string(nvl, "service"))
  _exit(1);
 servname = nvlist_get_string(nvl, "service");
 casserv = service_find(servname);
 if (casserv == ((void*)0))
  _exit(1);
 service = casserv->cs_service;
 procfd = nvlist_take_descriptor(nvl, "procfd");
 nvlist_destroy(nvl);

 service_start(service, chanfd, procfd);

 _exit(1);
}
