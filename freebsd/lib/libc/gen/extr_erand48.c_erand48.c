
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _dorand48 (unsigned short*) ;
 double ldexp (double,int) ;

double
erand48(unsigned short xseed[3])
{
 _dorand48(xseed);
 return ldexp((double) xseed[0], -48) +
        ldexp((double) xseed[1], -32) +
        ldexp((double) xseed[2], -16);
}
