
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZEOF_ARRAY (int ) ;
 int get_type (char const*,int ,int ) ;
 int tag_names ;

int
der_get_tag_num(const char *name)
{
    return get_type(name, tag_names, SIZEOF_ARRAY(tag_names));
}
