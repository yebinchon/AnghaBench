
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const uint16_t ;



__attribute__((used)) static int tls1_in_list(uint16_t id, const uint16_t *list, size_t listlen)
{
    size_t i;
    for (i = 0; i < listlen; i++)
        if (list[i] == id)
            return 1;
    return 0;
}
