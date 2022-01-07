
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct column_data {char const* suffix; } ;
typedef int rtbl_t ;



__attribute__((used)) static const char *
get_column_suffix (rtbl_t table, struct column_data *c)
{
    if (c && c->suffix)
 return c->suffix;
    return "";
}
