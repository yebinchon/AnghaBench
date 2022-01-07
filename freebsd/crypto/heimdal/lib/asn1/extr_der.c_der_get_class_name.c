
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SIZEOF_ARRAY (char const**) ;
 char const** class_names ;

const char *
der_get_class_name(unsigned num)
{
    if (num >= SIZEOF_ARRAY(class_names))
 return ((void*)0);
    return class_names[num];
}
