
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int bus_size_t ;


 int NDIS_BUS_SPACE_MEM ;
 int bus_space_read_1 (int ,int,int ) ;

__attribute__((used)) static uint8_t
READ_REGISTER_UCHAR(uint8_t *reg)
{
 return (bus_space_read_1(NDIS_BUS_SPACE_MEM, 0x0, (bus_size_t)reg));
}
