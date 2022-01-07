
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef enum ucl_emitter { ____Placeholder_ucl_emitter } ucl_emitter ;


 unsigned char* ucl_object_emit_len (int const*,int,int *) ;

unsigned char *
ucl_object_emit (const ucl_object_t *obj, enum ucl_emitter emit_type)
{
 return ucl_object_emit_len (obj, emit_type, ((void*)0));
}
