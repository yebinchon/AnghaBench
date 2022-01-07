
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _PNP_ADDRESS ;
 int _PNP_WRITE_DATA ;
 int outb (int ,int) ;

__attribute__((used)) static void
isapnp_write(int d, int r)
{
    outb (_PNP_ADDRESS, d);
    outb (_PNP_WRITE_DATA, r);
}
