
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TARGET_ADDR_BIT ;
 int remote_address_size ;

__attribute__((used)) static void
build_remote_gdbarch_data (void)
{
  remote_address_size = TARGET_ADDR_BIT;
}
