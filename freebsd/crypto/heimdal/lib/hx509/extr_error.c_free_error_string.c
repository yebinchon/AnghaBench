
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* hx509_error ;
struct TYPE_4__ {struct TYPE_4__* msg; struct TYPE_4__* next; } ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
free_error_string(hx509_error msg)
{
    while(msg) {
 hx509_error m2 = msg->next;
 free(msg->msg);
 free(msg);
 msg = m2;
    }
}
