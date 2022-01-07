
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct service {int s_magic; int s_connections; int s_flags; int * s_command; int * s_limit; int * s_name; } ;
typedef int service_limit_func_t ;
typedef int service_command_func_t ;


 int SERVICE_MAGIC ;
 int TAILQ_INIT (int *) ;
 int free (struct service*) ;
 struct service* malloc (int) ;
 int * strdup (char const*) ;

struct service *
service_alloc(const char *name, service_limit_func_t *limitfunc,
    service_command_func_t *commandfunc, uint64_t flags)
{
 struct service *service;

 service = malloc(sizeof(*service));
 if (service == ((void*)0))
  return (((void*)0));
 service->s_name = strdup(name);
 if (service->s_name == ((void*)0)) {
  free(service);
  return (((void*)0));
 }
 service->s_limit = limitfunc;
 service->s_command = commandfunc;
 service->s_flags = flags;
 TAILQ_INIT(&service->s_connections);
 service->s_magic = SERVICE_MAGIC;

 return (service);
}
