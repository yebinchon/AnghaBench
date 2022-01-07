
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static inline int op_valid(uint16_t op, uint16_t mask)
{
 int opb = 1 << (op - 1);

 if (op == 0)
  return 0;
 if (opb & mask)
  return 1;

 if (op >= 0x8000)
  return 1;
 return 0;
}
