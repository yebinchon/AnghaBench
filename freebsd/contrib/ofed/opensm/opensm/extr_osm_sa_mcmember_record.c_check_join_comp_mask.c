
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ib_net64_t ;
typedef int boolean_t ;


 int JOIN_MC_COMP_MASK ;

__attribute__((used)) static inline boolean_t check_join_comp_mask(ib_net64_t comp_mask)
{
 return ((comp_mask & JOIN_MC_COMP_MASK) == JOIN_MC_COMP_MASK);
}
