
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int paprd_abs(int num)
{
    if (num < 0) {
        return -num;
    }
    return num;
}
