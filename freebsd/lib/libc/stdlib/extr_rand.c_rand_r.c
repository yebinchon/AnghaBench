
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_long ;


 int do_rand (unsigned int*) ;

int
rand_r(unsigned *ctx)
{
 u_long val;
 int r;

 val = *ctx;
 r = do_rand(&val);
 *ctx = (unsigned)val;
 return (r);
}
