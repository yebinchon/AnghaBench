
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USE (int) ;
 int f ;
 int xclose (int) ;

__attribute__((used)) static void

cleanf(int snum)
{
    USE(snum);
    if (f != -1)
 xclose(f);
    f = -1;
}
