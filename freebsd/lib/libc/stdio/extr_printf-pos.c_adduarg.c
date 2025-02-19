
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typetable {int nextarg; void** table; } ;


 int INTMAXT ;
 int LLONGINT ;
 int LONGINT ;
 int PTRDIFFT ;
 int SIZET ;
 void* T_SIZET ;
 void* T_UINTMAXT ;
 void* T_U_INT ;
 void* T_U_LLONG ;
 void* T_U_LONG ;
 scalar_t__ _ensurespace (struct typetable*) ;

__attribute__((used)) static inline int
adduarg(struct typetable *types, int flags)
{

 if (_ensurespace(types))
  return (-1);
 if (flags & INTMAXT)
  types->table[types->nextarg++] = T_UINTMAXT;
 else if (flags & SIZET)
  types->table[types->nextarg++] = T_SIZET;
 else if (flags & PTRDIFFT)
  types->table[types->nextarg++] = T_SIZET;
 else if (flags & LLONGINT)
  types->table[types->nextarg++] = T_U_LLONG;
 else if (flags & LONGINT)
  types->table[types->nextarg++] = T_U_LONG;
 else
  types->table[types->nextarg++] = T_U_INT;
 return (0);
}
