
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_long ;


 int KASSERT (int,char*) ;
 int getandflags16 (int ,int ) ;
 int getandflags32 (int ,int ) ;
 int getandflags64 (int ,int ) ;
 int getandflags8 (int ,int ) ;

__attribute__((used)) static u_long
getandflags(int opsize, uint64_t x, uint64_t y)
{
 KASSERT(opsize == 1 || opsize == 2 || opsize == 4 || opsize == 8,
     ("getandflags: invalid operand size %d", opsize));

 if (opsize == 1)
  return (getandflags8(x, y));
 else if (opsize == 2)
  return (getandflags16(x, y));
 else if (opsize == 4)
  return (getandflags32(x, y));
 else
  return (getandflags64(x, y));
}
