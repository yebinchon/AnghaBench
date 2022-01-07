
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CODE_MASK ;
 unsigned long INV_CODE_MASK ;
 unsigned long VALID_CODE_MASK ;

__attribute__((used)) static int
aw_ir_validate_code(unsigned long code)
{
 unsigned long v1, v2;


 v1 = code & CODE_MASK;
 v2 = (code & INV_CODE_MASK) >> 8;

 if (((v1 ^ v2) & VALID_CODE_MASK) == VALID_CODE_MASK)
  return (0);
 else
  return (1);
}
