
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct arm_sync_icache_args {int len; int addr; } ;


 int ARM_SYNC_ICACHE ;
 int sysarch (int ,struct arm_sync_icache_args*) ;

int
arm_sync_icache(u_int addr, int len)
{
 struct arm_sync_icache_args args;

 args.addr = addr;
 args.len = len;
 sysarch(ARM_SYNC_ICACHE, &args);
 return (0);
}
