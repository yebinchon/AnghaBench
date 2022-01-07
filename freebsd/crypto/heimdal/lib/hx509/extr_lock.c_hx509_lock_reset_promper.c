
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_lock ;
struct TYPE_3__ {int * prompt_data; int * prompt; } ;



void
hx509_lock_reset_promper(hx509_lock lock)
{
    lock->prompt = ((void*)0);
    lock->prompt_data = ((void*)0);
}
