
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DH_METHOD ;


 int const* default_DH_method ;

void DH_set_default_method(const DH_METHOD *meth)
{
    default_DH_method = meth;
}
