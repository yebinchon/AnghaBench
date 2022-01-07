
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ DH_METHOD ;



const char *DH_meth_get0_name(const DH_METHOD *dhm)
{
    return dhm->name;
}
