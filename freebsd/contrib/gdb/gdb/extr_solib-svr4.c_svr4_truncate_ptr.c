
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int TARGET_PTR_BIT ;

__attribute__((used)) static CORE_ADDR
svr4_truncate_ptr (CORE_ADDR addr)
{
  if (TARGET_PTR_BIT == sizeof (CORE_ADDR) * 8)


    return addr;
  else
    return addr & (((CORE_ADDR) 1 << TARGET_PTR_BIT) - 1);
}
