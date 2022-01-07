
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZEOF_ARRAY (int ) ;
 int class_names ;
 int get_type (char const*,int ,int ) ;

int
der_get_class_num(const char *name)
{
    return get_type(name, class_names, SIZEOF_ARRAY(class_names));
}
