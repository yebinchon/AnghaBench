
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long length; } ;
typedef TYPE_1__ DH ;



int DH_set_length(DH *dh, long length)
{
    dh->length = length;
    return 1;
}
