
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TARGET_ADDR_BIT ;

int
strlen_paddr (void)
{
  return (TARGET_ADDR_BIT / 8 * 2);
}
