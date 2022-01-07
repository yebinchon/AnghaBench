
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_prompt_type ;





int
hx509_prompt_hidden(hx509_prompt_type type)
{


    switch (type) {
    case 128:
    case 129:
 return 0;
    default:
 return 1;
    }
}
