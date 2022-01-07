
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typetable {int nextarg; int * table; } ;


 int INTMAXT ;
 int LLONGINT ;
 int LONGINT ;
 int PTRDIFFT ;
 int SIZET ;
 int T_INT ;
 int T_INTMAXT ;
 int T_LLONG ;
 int T_LONG ;
 int T_PTRDIFFT ;
 int T_SSIZET ;
 scalar_t__ _ensurespace (struct typetable*) ;

__attribute__((used)) static inline int
addsarg(struct typetable *types, int flags)
{

 if (_ensurespace(types))
  return (-1);
 if (flags & INTMAXT)
  types->table[types->nextarg++] = T_INTMAXT;
 else if (flags & SIZET)
  types->table[types->nextarg++] = T_SSIZET;
 else if (flags & PTRDIFFT)
  types->table[types->nextarg++] = T_PTRDIFFT;
 else if (flags & LLONGINT)
  types->table[types->nextarg++] = T_LLONG;
 else if (flags & LONGINT)
  types->table[types->nextarg++] = T_LONG;
 else
  types->table[types->nextarg++] = T_INT;
 return (0);
}
