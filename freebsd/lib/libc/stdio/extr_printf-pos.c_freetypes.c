
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typetable {scalar_t__ table; scalar_t__ stattable; } ;


 int free (scalar_t__) ;

__attribute__((used)) static inline void
freetypes(struct typetable *types)
{

 if (types->table != types->stattable)
  free (types->table);
}
