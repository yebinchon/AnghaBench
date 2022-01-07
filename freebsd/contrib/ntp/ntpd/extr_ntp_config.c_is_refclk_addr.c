
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ address; } ;
typedef TYPE_1__ address_node ;


 int strncmp (scalar_t__,char*,int) ;

__attribute__((used)) static int
is_refclk_addr(
 const address_node * addr
 )
{
 return addr && addr->address && !strncmp(addr->address, "127.127.", 8);
}
