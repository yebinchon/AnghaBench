
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct column_data {unsigned int column_id; } ;
typedef TYPE_1__* rtbl_t ;
struct TYPE_3__ {size_t num_columns; struct column_data** columns; } ;



__attribute__((used)) static struct column_data *
rtbl_get_column_by_id (rtbl_t table, unsigned int id)
{
    size_t i;
    for(i = 0; i < table->num_columns; i++)
 if(table->columns[i]->column_id == id)
     return table->columns[i];
    return ((void*)0);
}
