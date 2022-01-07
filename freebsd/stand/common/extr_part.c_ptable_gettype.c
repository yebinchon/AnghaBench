
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptable {int type; } ;
typedef enum ptable_type { ____Placeholder_ptable_type } ptable_type ;



enum ptable_type
ptable_gettype(const struct ptable *table)
{

 return (table->type);
}
