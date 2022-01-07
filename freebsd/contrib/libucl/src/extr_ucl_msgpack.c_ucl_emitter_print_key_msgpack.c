
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keylen; int key; } ;
typedef TYPE_1__ ucl_object_t ;
struct ucl_emitter_context {int dummy; } ;


 int ucl_emitter_print_string_msgpack (struct ucl_emitter_context*,int ,int ) ;

void
ucl_emitter_print_key_msgpack (bool print_key, struct ucl_emitter_context *ctx,
  const ucl_object_t *obj)
{
 if (print_key) {
  ucl_emitter_print_string_msgpack (ctx, obj->key, obj->keylen);
 }
}
