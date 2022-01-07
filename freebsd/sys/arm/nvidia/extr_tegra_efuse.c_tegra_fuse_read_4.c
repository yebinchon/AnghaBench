
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int RD4 (int *,int) ;
 int * dev_sc ;
 int panic (char*) ;

uint32_t
tegra_fuse_read_4(int addr) {

 if (dev_sc == ((void*)0))
  panic("tegra_fuse_read_4 called too early");
 return (RD4(dev_sc, addr));
}
