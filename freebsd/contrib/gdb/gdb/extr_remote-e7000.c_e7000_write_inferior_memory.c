
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 scalar_t__ using_pc ;
 scalar_t__ using_tcp ;
 int write_large (int ,unsigned char*,int) ;
 int write_small (int ,unsigned char*,int) ;

__attribute__((used)) static int
e7000_write_inferior_memory (CORE_ADDR memaddr, unsigned char *myaddr, int len)
{
  if (len < 16 || using_tcp || using_pc)
    return write_small (memaddr, myaddr, len);
  else
    return write_large (memaddr, myaddr, len);
}
