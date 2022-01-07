
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jailparam {size_t jp_valuelen; int jp_flags; void* jp_value; } ;


 int JP_RAWVALUE ;

int
jailparam_import_raw(struct jailparam *jp, void *value, size_t valuelen)
{

 jp->jp_value = value;
 jp->jp_valuelen = valuelen;
 jp->jp_flags |= JP_RAWVALUE;
 return (0);
}
