
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* server; struct TYPE_5__* map; struct TYPE_5__* domain; } ;
typedef TYPE_1__ ypclnt_t ;


 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 void* strdup (char const*) ;

ypclnt_t *
ypclnt_new(const char *domain, const char *map, const char *server)
{
 ypclnt_t *ypclnt;

 if ((ypclnt = calloc(1, sizeof *ypclnt)) == ((void*)0))
  return (((void*)0));
 if (domain != ((void*)0) && (ypclnt->domain = strdup(domain)) == ((void*)0))
  goto fail;
 if (map != ((void*)0) && (ypclnt->map = strdup(map)) == ((void*)0))
  goto fail;
 if (server != ((void*)0) && (ypclnt->server = strdup(server)) == ((void*)0))
  goto fail;
 return (ypclnt);
 fail:
 free(ypclnt->domain);
 free(ypclnt->map);
 free(ypclnt->server);
 free(ypclnt);
 return (((void*)0));
}
