
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SIZEOF_ARRAY (char const**) ;
 char const** type_names ;

const char *
der_get_type_name(unsigned num)
{
    if (num >= SIZEOF_ARRAY(type_names))
 return ((void*)0);
    return type_names[num];
}
