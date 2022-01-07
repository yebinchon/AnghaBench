
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USE (int) ;
 int windowchg ;

void

window_change(int snum)
{
    USE(snum);
    windowchg = 1;
}
