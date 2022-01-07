
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct column_data {char const* prefix; } ;
typedef TYPE_1__* rtbl_t ;
struct TYPE_3__ {char const* column_prefix; } ;



__attribute__((used)) static const char *
get_column_prefix (rtbl_t table, struct column_data *c)
{
    if (c == ((void*)0))
 return "";
    if (c->prefix)
 return c->prefix;
    if (table->column_prefix)
 return table->column_prefix;
    return "";
}
