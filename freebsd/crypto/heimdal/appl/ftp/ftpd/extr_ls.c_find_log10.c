
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
find_log10(int num)
{
    int i = 1;
    while(num > 10) {
 i++;
 num /= 10;
    }
    return i;
}
