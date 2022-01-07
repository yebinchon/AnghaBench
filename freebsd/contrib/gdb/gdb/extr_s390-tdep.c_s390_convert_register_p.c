
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int S390_F0_REGNUM ;
 int S390_F15_REGNUM ;
 int TYPE_LENGTH (struct type*) ;

__attribute__((used)) static int
s390_convert_register_p (int regno, struct type *type)
{
  return (regno >= S390_F0_REGNUM && regno <= S390_F15_REGNUM)
  && TYPE_LENGTH (type) < 8;
}
