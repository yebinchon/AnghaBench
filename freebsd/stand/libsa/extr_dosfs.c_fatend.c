
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;



__attribute__((used)) static int
fatend(u_int sz, u_int c)
{
    return (c > (sz == 12 ? 0xff7U : sz == 16 ? 0xfff7U : 0xffffff7));
}
