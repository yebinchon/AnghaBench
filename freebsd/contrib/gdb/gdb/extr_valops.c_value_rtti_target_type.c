
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;


 struct value* value_ind (struct value*) ;
 struct type* value_rtti_type (struct value*,int*,int*,int*) ;

struct type *
value_rtti_target_type (struct value *v, int *full, int *top, int *using_enc)
{
  struct value *target;

  target = value_ind (v);

  return value_rtti_type (target, full, top, using_enc);
}
