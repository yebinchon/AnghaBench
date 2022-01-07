
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct extra_radius_attr {scalar_t__ type; struct extra_radius_attr* next; } ;



__attribute__((used)) static struct extra_radius_attr *
find_extra_attr(struct extra_radius_attr *attrs, u8 type)
{
 struct extra_radius_attr *p;
 for (p = attrs; p; p = p->next) {
  if (p->type == type)
   return p;
 }
 return ((void*)0);
}
