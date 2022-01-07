
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_handle {int bindto; } ;
typedef int in_addr_t ;



void
rad_bind_to(struct rad_handle *h, in_addr_t addr)
{

 h->bindto = addr;
}
