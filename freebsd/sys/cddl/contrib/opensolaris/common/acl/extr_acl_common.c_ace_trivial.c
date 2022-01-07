
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ace_t ;


 int ace_trivial_common (int *,int,int ) ;
 int ace_walk ;

int
ace_trivial(ace_t *acep, int aclcnt)
{
 return (ace_trivial_common(acep, aclcnt, ace_walk));
}
