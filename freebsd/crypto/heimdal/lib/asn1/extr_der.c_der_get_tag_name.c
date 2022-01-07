
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SIZEOF_ARRAY (char const**) ;
 char const** tag_names ;

const char *
der_get_tag_name(unsigned num)
{
    if (num >= SIZEOF_ARRAY(tag_names))
 return ((void*)0);
    return tag_names[num];
}
