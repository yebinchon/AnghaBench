
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typetable {int* table; int nextarg; } ;
typedef enum typeid { ____Placeholder_typeid } typeid ;


 scalar_t__ _ensurespace (struct typetable*) ;

__attribute__((used)) static inline int
addtype(struct typetable *types, enum typeid type)
{

 if (_ensurespace(types))
  return (-1);
 types->table[types->nextarg++] = type;
 return (0);
}
