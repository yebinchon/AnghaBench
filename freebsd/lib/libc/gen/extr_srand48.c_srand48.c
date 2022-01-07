
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RAND48_ADD ;
 int RAND48_MULT_0 ;
 int RAND48_MULT_1 ;
 int RAND48_MULT_2 ;
 unsigned short RAND48_SEED_0 ;
 int _rand48_add ;
 int * _rand48_mult ;
 unsigned short* _rand48_seed ;

void
srand48(long seed)
{
 _rand48_seed[0] = RAND48_SEED_0;
 _rand48_seed[1] = (unsigned short) seed;
 _rand48_seed[2] = (unsigned short) (seed >> 16);
 _rand48_mult[0] = RAND48_MULT_0;
 _rand48_mult[1] = RAND48_MULT_1;
 _rand48_mult[2] = RAND48_MULT_2;
 _rand48_add = RAND48_ADD;
}
