
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_user_mad {int addr; } ;
typedef int ib_mad_addr_t ;



ib_mad_addr_t *umad_get_mad_addr(void *umad)
{
 struct ib_user_mad *mad = umad;

 return &mad->addr;
}
