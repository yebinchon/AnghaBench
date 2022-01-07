
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int find_max(int *array, int length)
{
    int i, loc_max;

    loc_max = 0;

    for (i = 0; i < length; i++) {
        if (array[i] > loc_max) {
            loc_max = array[i];
        }
    }

    return loc_max;
}
