
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct column_data {size_t num_rows; TYPE_1__* rows; scalar_t__ width; int header; } ;
typedef TYPE_2__* rtbl_t ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int data; } ;


 int RTBL_HEADER_STYLE_NONE ;
 scalar_t__ max (scalar_t__,int) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static void
column_compute_width (rtbl_t table, struct column_data *column)
{
    size_t i;

    if(table->flags & RTBL_HEADER_STYLE_NONE)
 column->width = 0;
    else
 column->width = strlen (column->header);
    for (i = 0; i < column->num_rows; i++)
 column->width = max (column->width, (int) strlen (column->rows[i].data));
}
