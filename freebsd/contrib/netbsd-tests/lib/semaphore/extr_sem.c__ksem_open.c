
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int rump_sys__ksem_open (char const*,int,int ,unsigned int,intptr_t*) ;

int _ksem_open(const char *a, int b, mode_t c, unsigned int d, intptr_t *e)
    {return rump_sys__ksem_open(a,b,c,d,e);}
