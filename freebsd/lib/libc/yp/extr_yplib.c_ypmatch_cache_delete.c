
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct ypmatch_ent* valdat_val; } ;
struct TYPE_3__ {struct ypmatch_ent* keydat_val; } ;
struct ypmatch_ent {TYPE_2__ ypc_val; TYPE_1__ ypc_key; struct ypmatch_ent* ypc_map; int ypc_next; } ;
struct dom_binding {int ypmatch_cachecnt; int cache; } ;


 int free (struct ypmatch_ent*) ;

__attribute__((used)) static void
ypmatch_cache_delete(struct dom_binding *ypdb, struct ypmatch_ent *prev,
    struct ypmatch_ent *cur)
{
 if (prev == ((void*)0))
  ypdb->cache = cur->ypc_next;
 else
  prev->ypc_next = cur->ypc_next;

 free(cur->ypc_map);
 free(cur->ypc_key.keydat_val);
 free(cur->ypc_val.valdat_val);
 free(cur);

 ypdb->ypmatch_cachecnt--;

 return;
}
