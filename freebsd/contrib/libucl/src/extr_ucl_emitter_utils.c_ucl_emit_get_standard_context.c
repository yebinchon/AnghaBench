
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_emitter_context {int dummy; } ;
typedef enum ucl_emitter { ____Placeholder_ucl_emitter } ucl_emitter ;


 int UCL_EMIT_JSON ;
 int UCL_EMIT_MAX ;
 struct ucl_emitter_context const* ucl_standard_emitters ;

const struct ucl_emitter_context *
ucl_emit_get_standard_context (enum ucl_emitter emit_type)
{
 if (emit_type >= UCL_EMIT_JSON && emit_type < UCL_EMIT_MAX) {
  return &ucl_standard_emitters[emit_type];
 }

 return ((void*)0);
}
