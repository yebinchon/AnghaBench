
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ atomic_cmpset_int (int *,int ,int ) ;
 int dbg_capable_var ;

__attribute__((used)) static __inline boolean_t
dbg_capable(void)
{

 return (atomic_cmpset_int(&dbg_capable_var, 0, 0) == 0);
}
