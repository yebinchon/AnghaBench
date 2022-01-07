
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_UNS ;



int isPowerOfTwo(FICL_UNS u)
{
    int i = 1;
    FICL_UNS t = 2;

    for (; ((t <= u) && (t != 0)); i++, t <<= 1)
    {
        if (u == t)
            return i;
    }

    return 0;
}
