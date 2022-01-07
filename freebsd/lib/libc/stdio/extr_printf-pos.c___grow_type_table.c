
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct typetable {int* table; int tablesize; int nextarg; } ;
typedef enum typeid { ____Placeholder_typeid } typeid ;


 int NL_ARGMAX ;
 int const STATIC_ARG_TBL_SIZE ;
 int T_UNUSED ;
 int bcopy (int* const,int*,int const) ;
 int* malloc (int) ;
 int* reallocarray (int* const,int,int) ;

__attribute__((used)) static int
__grow_type_table(struct typetable *types)
{
 enum typeid *const oldtable = types->table;
 const int oldsize = types->tablesize;
 enum typeid *newtable;
 u_int n, newsize;


 if (types->nextarg > NL_ARGMAX)
  return (-1);

 newsize = oldsize * 2;
 if (newsize < types->nextarg + 1)
  newsize = types->nextarg + 1;
 if (oldsize == STATIC_ARG_TBL_SIZE) {
  if ((newtable = malloc(newsize * sizeof(enum typeid))) == ((void*)0))
   return (-1);
  bcopy(oldtable, newtable, oldsize * sizeof(enum typeid));
 } else {
  newtable = reallocarray(oldtable, newsize, sizeof(enum typeid));
  if (newtable == ((void*)0))
   return (-1);
 }
 for (n = oldsize; n < newsize; n++)
  newtable[n] = T_UNUSED;

 types->table = newtable;
 types->tablesize = newsize;

 return (0);
}
