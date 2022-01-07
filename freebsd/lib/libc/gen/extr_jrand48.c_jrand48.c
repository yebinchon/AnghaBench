
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef long int32_t ;


 int _dorand48 (unsigned short*) ;

long
jrand48(unsigned short xseed[3])
{

 _dorand48(xseed);
 return ((int32_t)(((uint32_t)xseed[2] << 16) | (uint32_t)xseed[1]));
}
