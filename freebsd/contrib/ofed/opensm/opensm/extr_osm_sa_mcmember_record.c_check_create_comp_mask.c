
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ib_net64_t ;
typedef int ib_member_rec_t ;
typedef int boolean_t ;


 int REQUIRED_MC_CREATE_COMP_MASK ;

__attribute__((used)) static boolean_t check_create_comp_mask(ib_net64_t comp_mask,
     ib_member_rec_t * p_recvd_mcmember_rec)
{
 return ((comp_mask & REQUIRED_MC_CREATE_COMP_MASK) ==
  REQUIRED_MC_CREATE_COMP_MASK);
}
