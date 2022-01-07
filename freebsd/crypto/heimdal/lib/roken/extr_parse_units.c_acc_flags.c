
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
acc_flags(int res, int val, unsigned mult)
{
    if(val == 1)
 return res | mult;
    else if(val == -1)
 return res & ~mult;
    else if (val == 0)
 return mult;
    else
 return -1;
}
