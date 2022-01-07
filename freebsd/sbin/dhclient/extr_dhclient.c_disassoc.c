
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct interface_info {TYPE_1__* client; } ;
struct TYPE_2__ {int state; int * alias; int * active; } ;


 int S_INIT ;
 int script_go () ;
 int script_init (char*,int *) ;
 int script_write_params (char*,int *) ;

__attribute__((used)) static void
disassoc(void *arg)
{
 struct interface_info *_ifi = arg;




 if (_ifi->client->active != ((void*)0)) {
  script_init("EXPIRE", ((void*)0));
  script_write_params("old_",
      _ifi->client->active);
  if (_ifi->client->alias)
   script_write_params("alias_",
    _ifi->client->alias);
  script_go();
 }
 _ifi->client->state = S_INIT;
}
