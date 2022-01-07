
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2i {int val; scalar_t__ s; } ;


 scalar_t__ strcasecmp (scalar_t__,char const*) ;

__attribute__((used)) static int
find_value(const char *s, struct s2i *table)
{
    while(table->s && strcasecmp(table->s, s))
 table++;
    return table->val;
}
