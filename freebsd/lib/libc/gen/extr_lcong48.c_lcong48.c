
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short _rand48_add ;
 unsigned short* _rand48_mult ;
 unsigned short* _rand48_seed ;

void
lcong48(unsigned short p[7])
{
 _rand48_seed[0] = p[0];
 _rand48_seed[1] = p[1];
 _rand48_seed[2] = p[2];
 _rand48_mult[0] = p[3];
 _rand48_mult[1] = p[4];
 _rand48_mult[2] = p[5];
 _rand48_add = p[6];
}
