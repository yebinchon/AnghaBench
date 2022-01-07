
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
acc_units(int res, int val, unsigned mult)
{
    return res + val * mult;
}
