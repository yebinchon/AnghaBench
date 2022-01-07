
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plugin2 {int names; int * dsohandle; } ;
struct plug {struct common_plugin_method* dataptr; int ctx; } ;
struct iter_ctx {scalar_t__ min_version; int result; int n; int context; int name; } ;
struct common_plugin_method {int (* init ) (int ,int *) ;scalar_t__ version; } ;
typedef struct plugin2* heim_object_t ;


 struct common_plugin_method* dlsym (int *,int ) ;
 struct plug* heim_alloc (int,char*,int ) ;
 int heim_array_append_value (int ,struct plug*) ;
 int heim_dict_add_value (int ,int ,struct plug*) ;
 struct plug* heim_dict_copy_value (int ,int ) ;
 int heim_release (struct plug*) ;
 int plug_free ;
 int stub1 (int ,int *) ;

__attribute__((used)) static void
search_modules(void *ctx, heim_object_t key, heim_object_t value)
{
    struct iter_ctx *s = ctx;
    struct plugin2 *p = value;
    struct plug *pl = heim_dict_copy_value(p->names, s->n);
    struct common_plugin_method *cpm;

    if (pl == ((void*)0)) {
 if (p->dsohandle == ((void*)0))
     return;

 pl = heim_alloc(sizeof(*pl), "struct-plug", plug_free);

 cpm = pl->dataptr = dlsym(p->dsohandle, s->name);
 if (cpm) {
     int ret;

     ret = cpm->init(s->context, &pl->ctx);
     if (ret)
  cpm = pl->dataptr = ((void*)0);
 }
 heim_dict_add_value(p->names, s->n, pl);
    } else {
 cpm = pl->dataptr;
    }

    if (cpm && cpm->version >= s->min_version)
 heim_array_append_value(s->result, pl);

    heim_release(pl);
}
