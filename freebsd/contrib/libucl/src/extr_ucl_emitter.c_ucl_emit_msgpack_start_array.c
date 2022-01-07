
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; } ;
typedef TYPE_1__ ucl_object_t ;
struct ucl_emitter_context {int dummy; } ;


 int ucl_emitter_print_array_msgpack (struct ucl_emitter_context*,int ) ;

__attribute__((used)) static void
ucl_emit_msgpack_start_array (struct ucl_emitter_context *ctx,
  const ucl_object_t *obj, bool print_key)
{
 ucl_emitter_print_array_msgpack (ctx, obj->len);
}
