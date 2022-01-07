
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct casper_service {int * cs_service; } ;
typedef int service_limit_func_t ;
typedef int service_command_func_t ;


 int TAILQ_INSERT_TAIL (int *,struct casper_service*,int ) ;
 int casper_services ;
 int cs_next ;
 int free (struct casper_service*) ;
 struct casper_service* malloc (int) ;
 int * service_alloc (char const*,int *,int *,int ) ;
 int * service_find (char const*) ;

struct casper_service *
service_register(const char *name, service_limit_func_t *limitfunc,
   service_command_func_t *commandfunc, uint64_t flags)
{
 struct casper_service *casserv;

 if (commandfunc == ((void*)0))
  return (((void*)0));
 if (name == ((void*)0) || name[0] == '\0')
  return (((void*)0));
 if (service_find(name) != ((void*)0))
  return (((void*)0));

 casserv = malloc(sizeof(*casserv));
 if (casserv == ((void*)0))
  return (((void*)0));

 casserv->cs_service = service_alloc(name, limitfunc, commandfunc,
     flags);
 if (casserv->cs_service == ((void*)0)) {
  free(casserv);
  return (((void*)0));
 }
 TAILQ_INSERT_TAIL(&casper_services, casserv, cs_next);

 return (casserv);
}
