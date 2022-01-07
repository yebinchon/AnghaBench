
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct radius_attr_type {scalar_t__ type; } ;


 size_t RADIUS_ATTRS ;
 struct radius_attr_type const* radius_attrs ;

__attribute__((used)) static const struct radius_attr_type *radius_get_attr_type(u8 type)
{
 size_t i;

 for (i = 0; i < RADIUS_ATTRS; i++) {
  if (type == radius_attrs[i].type)
   return &radius_attrs[i];
 }

 return ((void*)0);
}
