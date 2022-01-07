
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct creation_set {char const* create_format; } ;



const char *
cset_get_format(struct creation_set *cset)
{
 return (cset->create_format);
}
