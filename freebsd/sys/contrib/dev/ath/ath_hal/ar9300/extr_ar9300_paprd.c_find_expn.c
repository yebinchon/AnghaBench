
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int find_expn(int num)
{
    int tmp, exp;

    exp = 0;
    tmp = num >> 1;

    while (tmp != 0) {
        tmp = tmp >> 1;
        exp++;
    }

    return exp;
}
