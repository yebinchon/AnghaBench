
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hx509_prompt ;
typedef TYPE_1__* hx509_lock ;
struct TYPE_3__ {int (* prompt ) (int ,int *) ;int prompt_data; } ;


 int HX509_CRYPTO_NO_PROMPTER ;
 int stub1 (int ,int *) ;

int
hx509_lock_prompt(hx509_lock lock, hx509_prompt *prompt)
{
    if (lock->prompt == ((void*)0))
 return HX509_CRYPTO_NO_PROMPTER;
    return (*lock->prompt)(lock->prompt_data, prompt);
}
