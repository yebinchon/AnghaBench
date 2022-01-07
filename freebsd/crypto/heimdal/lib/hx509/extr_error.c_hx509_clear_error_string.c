
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_context ;
struct TYPE_3__ {int * error; } ;


 int free_error_string (int *) ;

void
hx509_clear_error_string(hx509_context context)
{
    if (context) {
 free_error_string(context->error);
 context->error = ((void*)0);
    }
}
