
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* error; struct TYPE_4__* server; struct TYPE_4__* map; struct TYPE_4__* domain; } ;
typedef TYPE_1__ ypclnt_t ;


 int free (TYPE_1__*) ;

void
ypclnt_free(ypclnt_t *ypclnt)
{
 if (ypclnt != ((void*)0)) {
  free(ypclnt->domain);
  free(ypclnt->map);
  free(ypclnt->server);
  free(ypclnt->error);
  free(ypclnt);
 }
}
