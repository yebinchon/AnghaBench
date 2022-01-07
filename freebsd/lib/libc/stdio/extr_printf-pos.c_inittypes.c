
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct typetable {size_t tablesize; int nextarg; int * table; scalar_t__ tablemax; int * stattable; } ;


 size_t STATIC_ARG_TBL_SIZE ;
 int T_UNUSED ;

__attribute__((used)) static inline void
inittypes(struct typetable *types)
{
 u_int n;

 types->table = types->stattable;
 types->tablesize = STATIC_ARG_TBL_SIZE;
 types->tablemax = 0;
 types->nextarg = 1;
 for (n = 0; n < STATIC_ARG_TBL_SIZE; n++)
  types->table[n] = T_UNUSED;
}
