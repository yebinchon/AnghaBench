
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
bmember_isset_bit(const void *data, unsigned int bit, size_t size)
{





    if ((*(unsigned int *)data) & (1 << bit))
 return 1;
    return 0;

}
