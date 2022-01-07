
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UI_METHOD ;


 int const* default_UI_meth ;

void UI_set_default_method(const UI_METHOD *meth)
{
    default_UI_meth = meth;
}
