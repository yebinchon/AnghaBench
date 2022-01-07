
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int o_mode_t ;
typedef int boolean_t ;


 int ACE_READ_ACL ;
 int ACE_READ_ATTRIBUTES ;
 int ENOTSUP ;
 int ace_mask_to_mode (int,int *,int ) ;

__attribute__((used)) static int
ace_allow_to_mode(uint32_t mask, o_mode_t *modep, boolean_t isdir)
{

 if ((mask & (ACE_READ_ACL | ACE_READ_ATTRIBUTES)) !=
     (ACE_READ_ACL | ACE_READ_ATTRIBUTES)) {
  return (ENOTSUP);
 }

 return (ace_mask_to_mode(mask, modep, isdir));
}
