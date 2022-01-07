
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct column_data {int header; } ;
typedef TYPE_1__* rtbl_t ;
struct TYPE_3__ {size_t num_columns; struct column_data** columns; } ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static struct column_data *
rtbl_get_column (rtbl_t table, const char *column)
{
    size_t i;
    for(i = 0; i < table->num_columns; i++)
 if(strcmp(table->columns[i]->header, column) == 0)
     return table->columns[i];
    return ((void*)0);
}
