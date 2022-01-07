
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xo_name_lookup (int ,char const*,int) ;
 int xo_xof_names ;

__attribute__((used)) static unsigned
xo_name_to_flag (const char *name)
{
    return (unsigned) xo_name_lookup(xo_xof_names, name, -1);
}
