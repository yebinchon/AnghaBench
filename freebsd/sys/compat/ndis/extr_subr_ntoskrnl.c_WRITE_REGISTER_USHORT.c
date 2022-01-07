
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int bus_size_t ;


 int NDIS_BUS_SPACE_MEM ;
 int bus_space_write_2 (int ,int,int ,int ) ;

__attribute__((used)) static void
WRITE_REGISTER_USHORT(uint16_t *reg, uint16_t val)
{
 bus_space_write_2(NDIS_BUS_SPACE_MEM, 0x0, (bus_size_t)reg, val);
}
