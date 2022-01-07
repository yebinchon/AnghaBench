
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xo_handle_t ;
struct TYPE_5__ {int c_stack_buf; int c_value_buf; int c_name_buf; int c_data; } ;
typedef TYPE_1__ csv_private_t ;


 int bzero (TYPE_1__*,int) ;
 int xo_buf_init (int *) ;
 TYPE_1__* xo_realloc (int *,int) ;
 int xo_set_private (int *,TYPE_1__*) ;

__attribute__((used)) static int
csv_create (xo_handle_t *xop)
{
    csv_private_t *csv = xo_realloc(((void*)0), sizeof(*csv));
    if (csv == ((void*)0))
 return -1;

    bzero(csv, sizeof(*csv));
    xo_buf_init(&csv->c_data);
    xo_buf_init(&csv->c_name_buf);
    xo_buf_init(&csv->c_value_buf);




    xo_set_private(xop, csv);

    return 0;
}
