
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ addr; } ;
typedef TYPE_1__ MEM ;



__attribute__((used)) static unsigned long mem_hash(const MEM *a)
{
    size_t ret;

    ret = (size_t)a->addr;

    ret = ret * 17851 + (ret >> 14) * 7 + (ret >> 4) * 251;
    return ret;
}
