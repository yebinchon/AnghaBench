
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hx509_prompter_fct ;
typedef TYPE_1__* hx509_lock ;
struct TYPE_3__ {void* prompt_data; int prompt; } ;



int
hx509_lock_set_prompter(hx509_lock lock, hx509_prompter_fct prompt, void *data)
{
    lock->prompt = prompt;
    lock->prompt_data = data;
    return 0;
}
