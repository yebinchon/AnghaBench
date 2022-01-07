
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int inferior_ptid ;
 int write_pc_pid (int ,int ) ;

void
write_pc (CORE_ADDR pc)
{
  write_pc_pid (pc, inferior_ptid);
}
