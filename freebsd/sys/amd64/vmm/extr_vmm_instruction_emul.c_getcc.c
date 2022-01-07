
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_long ;


 int KASSERT (int,char*) ;
 int getcc16 (int ,int ) ;
 int getcc32 (int ,int ) ;
 int getcc64 (int ,int ) ;
 int getcc8 (int ,int ) ;

__attribute__((used)) static u_long
getcc(int opsize, uint64_t x, uint64_t y)
{
 KASSERT(opsize == 1 || opsize == 2 || opsize == 4 || opsize == 8,
     ("getcc: invalid operand size %d", opsize));

 if (opsize == 1)
  return (getcc8(x, y));
 else if (opsize == 2)
  return (getcc16(x, y));
 else if (opsize == 4)
  return (getcc32(x, y));
 else
  return (getcc64(x, y));
}
