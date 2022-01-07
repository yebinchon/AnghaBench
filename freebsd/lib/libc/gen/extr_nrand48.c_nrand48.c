
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _dorand48 (unsigned short*) ;

long
nrand48(unsigned short xseed[3])
{
 _dorand48(xseed);
 return ((long) xseed[2] << 15) + ((long) xseed[1] >> 1);
}
