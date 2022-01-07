
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ flags; int * ptr; scalar_t__ num; scalar_t__ init; } ;
typedef TYPE_1__ BIO ;



__attribute__((used)) static int sock_new(BIO *bi)
{
    bi->init = 0;
    bi->num = 0;
    bi->ptr = ((void*)0);
    bi->flags = 0;
    return 1;
}
