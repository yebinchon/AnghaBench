
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* ptr; } ;
typedef TYPE_1__ BIO ;



void *BIO_get_data(BIO *a)
{
    return a->ptr;
}
