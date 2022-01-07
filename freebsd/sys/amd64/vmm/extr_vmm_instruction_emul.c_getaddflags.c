
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_long ;


 int KASSERT (int,char*) ;
 int getaddflags16 (int ,int ) ;
 int getaddflags32 (int ,int ) ;
 int getaddflags64 (int ,int ) ;
 int getaddflags8 (int ,int ) ;

__attribute__((used)) static u_long
getaddflags(int opsize, uint64_t x, uint64_t y)
{
 KASSERT(opsize == 1 || opsize == 2 || opsize == 4 || opsize == 8,
     ("getaddflags: invalid operand size %d", opsize));

 if (opsize == 1)
  return (getaddflags8(x, y));
 else if (opsize == 2)
  return (getaddflags16(x, y));
 else if (opsize == 4)
  return (getaddflags32(x, y));
 else
  return (getaddflags64(x, y));
}
